#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <stdbool.h>
#include <sys/stat.h>
#include "bitpack.h"

#define getRaId(currIns) ((currIns >> 6) & ((uint32_t) 7))
#define getRbId(currIns) ((currIns >> 3) & ((uint32_t) 7))
#define getRcId(currIns) (currIns & ((uint32_t) 7))

typedef enum Um_opcode {
        CMOV = 0, SLOAD, SSTORE, ADD, MUL, DIV,
        NAND, HALT, ACTIVATE, INACTIVATE, OUT, IN, LOADP, LV
} Um_opcode;

typedef struct DynAry_T {
    uint32_t currSize;
    uint32_t capacity;
    unsigned long *ptrArray;
} *DynAry_T;

typedef struct UStack_T {
    uint32_t currSize;
    uint32_t capacity;
    uint32_t *bufferArray;
} *UStack_T;

typedef struct UM_Memory {
    DynAry_T memorySegs;
    DynAry_T segSizes; 
    UStack_T reusable;
} *UM_Memory;

void *storeProgram(FILE *inputfp, uint32_t fsize);
uint32_t readaWord(FILE *input);
void runUM(UM_Memory umMem);
void i_cmove(uint32_t *ra, uint32_t *rb, uint32_t *rc);
uint32_t i_add(uint32_t rb, uint32_t rc);
uint32_t i_multiply(uint32_t rb, uint32_t rc);
uint32_t i_divide(uint32_t rb, uint32_t rc);
uint32_t i_nand(uint32_t rb, uint32_t rc);
uint32_t i_input();
void i_output(uint32_t rc);

UM_Memory initUMMemory(void *program, uint32_t sizeProgram);
void freeUMMemory(UM_Memory *myMem);

uint32_t Seg_map(UM_Memory myMem, uint32_t size);
void Seg_unmap(UM_Memory myMem, uint32_t index);
void loadProgram(UM_Memory myMem, uint32_t index);
void Seg_Store(UM_Memory myMem, uint32_t index, uint32_t offset, uint32_t value);
uint32_t Seg_Load(UM_Memory myMem, uint32_t index, uint32_t offset);
void *getSeg0(UM_Memory myMem);
uint32_t getSeg0Size(UM_Memory myMem);

UStack_T UStack_new();
void UStack_free(UStack_T *uStack);
void UStack_push(UStack_T uStack, uint32_t elem);
uint32_t UStack_pop(UStack_T uStack);
bool UStack_isEmpty(UStack_T uStack);
void UStack_expand(UStack_T uStack);

DynAry_T DynAry_new();
void DynAry_free(DynAry_T *ary);
uint32_t DynAry_push(DynAry_T ary, void *elem);
void DynAry_set(DynAry_T ary, uint32_t index, void *elem);
void *DynAry_get(DynAry_T ary, uint32_t index);
uint32_t DynAry_size(DynAry_T ary);
void DynAry_expand(DynAry_T ary);

int main(int argc, char **argv)
{
    if (argc != 2) {
        perror("Exit. Usage: ./um some_program.um\n");
        exit(EXIT_FAILURE);
    }
    FILE *fp = fopen(argv[1], "r");
    struct stat st;
    stat(argv[1], &st);
    uint32_t filesize = st.st_size;
    assert((filesize % 4) == 0);
    UM_Memory umMem = initUMMemory(storeProgram(fp, filesize), (filesize / 4));
    fclose(fp);

    runUM(umMem);

    freeUMMemory(&umMem);

    return 0;
}


void *storeProgram(FILE *inputfp, uint32_t fsize)
{
    assert(inputfp != NULL);

    uint32_t *program = malloc(fsize);

    for (uint32_t i = 0; i < (fsize / 4); i++) {
        program[i] = readaWord(inputfp);
    }

    return program;
}



uint32_t readaWord(FILE *input)
{
    uint32_t currWord = 0;
    for (int i = 3; i >= 0; i--)
    {
        uint32_t currChar = getc(input);
        
        currWord = Bitpack_newu(currWord, 8, i * 8, currChar);
    }
    
    return currWord;
}



void runUM(UM_Memory umMem)
{
    uint32_t r[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    uint32_t pCounter = 0;
    bool haltState = false;

    uint32_t *segProgram = (uint32_t *) getSeg0(umMem);


    Um_opcode currOpc = HALT;
    uint32_t currIns = 0;

    while((!haltState)){
        currIns = segProgram[pCounter];
        currOpc = ((currIns >> 28) & ((uint32_t) 15));

        switch(currOpc) {

            case ACTIVATE:
                r[getRbId(currIns)] = Seg_map(umMem, r[getRcId(currIns)]);
                break;

            case SSTORE:
                Seg_Store(umMem, r[getRaId(currIns)], r[getRbId(currIns)], 
                                                    r[getRcId(currIns)]);
                break;

            case INACTIVATE:
                Seg_unmap(umMem, r[getRcId(currIns)]);
                segProgram = (uint32_t *) getSeg0(umMem);

                break;

            case SLOAD:
                r[getRaId(currIns)] = 
                    Seg_Load(umMem, r[getRbId(currIns)], r[getRcId(currIns)]);
                break;

            case CMOV :
                i_cmove(r + getRaId(currIns), r + getRbId(currIns), 
                                            r + getRcId(currIns));
                break;


            case ADD:
                r[getRaId(currIns)] = 
                        i_add(r[getRbId(currIns)], r[getRcId(currIns)]);
                break;
            case MUL:
                r[getRaId(currIns)] = 
                        i_multiply(r[getRbId(currIns)], r[getRcId(currIns)]);
                break;

            case DIV:
                r[getRaId(currIns)] = 
                            i_divide(r[getRbId(currIns)], r[getRcId(currIns)]);
                break;

            case NAND:
                r[getRaId(currIns)] = 
                        i_nand(r[getRbId(currIns)], r[getRcId(currIns)]);
                break;

            case HALT:
                haltState = true;
                break;

            case OUT:
                i_output(r[getRcId(currIns)]);
                break;
            
            case IN:
                r[getRcId(currIns)] = i_input();
                break;
            
            case LOADP:
                loadProgram(umMem, r[getRbId(currIns)]);
                segProgram = (uint32_t *) getSeg0(umMem);

                pCounter = r[getRcId(currIns)];
                break;
            
            case LV:
                r[((currIns >> 25) & ((uint32_t) 7))] 
                        = (currIns & (uint32_t) 33554431);
                break;

        }

        if (currOpc != LOADP) {
            pCounter++;
        }
    }
}


void i_cmove(uint32_t *ra, uint32_t *rb, uint32_t *rc)
{
    if (*rc != 0) {
        *ra = *rb;
    }
}


uint32_t i_add(uint32_t rb, uint32_t rc)
{
    return (rb + rc);
}


uint32_t i_multiply(uint32_t rb, uint32_t rc)
{
    return (rb * rc);
}


uint32_t i_divide(uint32_t rb, uint32_t rc)
{
    return (rb / rc);
}


uint32_t i_nand(uint32_t rb, uint32_t rc)
{
    return ~(rb & rc);
}


uint32_t i_input()
{
    return (uint32_t) fgetc(stdin);
}


void i_output(uint32_t rc)
{
    assert(rc <= 255);
    fputc(rc, stdout);
}



UM_Memory initUMMemory(void *program, uint32_t sizeProgram)
{
    UM_Memory myMem = malloc(sizeof(*myMem));
    assert(myMem != NULL);
    myMem->memorySegs = DynAry_new();
    myMem->segSizes = DynAry_new();
    myMem->reusable = UStack_new();

    DynAry_push(myMem->memorySegs, program);
    DynAry_push(myMem->segSizes, (void *)(uintptr_t)sizeProgram);

    return myMem;
}


void freeUMMemory(UM_Memory *myMem)
{
    assert((myMem != NULL) && (*myMem != NULL));

    UStack_free(&((*myMem)->reusable));


    uint32_t sizeMem = DynAry_size((*myMem)->memorySegs);
    for (uint32_t i = 0; i < sizeMem; i++)
    {
        uint32_t *currSegPtr = DynAry_get((*myMem)->memorySegs, i);
        if (currSegPtr != NULL) {
            free(currSegPtr);
            currSegPtr = NULL;
        }
        
    }

    DynAry_free(&((*myMem)->memorySegs));
    DynAry_free(&((*myMem)->segSizes));

    free(*myMem);
}


uint32_t Seg_map(UM_Memory myMem, uint32_t size)
{
    assert(myMem != NULL);

    uint32_t segID;
    uint32_t *segPtr = malloc(size * sizeof(uint32_t));

    for(uint32_t i = 0; i < size; i++) {
        segPtr[i] = 0;
    }

    if (!UStack_isEmpty(myMem->reusable)) {
        segID = UStack_pop(myMem->reusable);
        DynAry_set(myMem->memorySegs, segID, segPtr);
        DynAry_set(myMem->segSizes, segID, (void *)(uintptr_t)size);
    } else {
        segID = DynAry_push(myMem->memorySegs, segPtr);
        DynAry_push(myMem->segSizes, (void *)(uintptr_t)size);
    }

    return segID;
}


void Seg_unmap(UM_Memory myMem, uint32_t index)
{
    assert(myMem != NULL);
    assert(index < DynAry_size(myMem->memorySegs));
    uint32_t *segPtr = DynAry_get(myMem->memorySegs, index);
    assert(segPtr != NULL);
    
    free(segPtr);

    DynAry_set(myMem->memorySegs, index, NULL);

    DynAry_set(myMem->segSizes, index, NULL);

    UStack_push(myMem->reusable, index);

}


void loadProgram(UM_Memory myMem, uint32_t index)
{
    assert(myMem != NULL);

    if (index != 0) {
       
        uint32_t segSize = 
            (uint32_t)(uintptr_t)DynAry_get(myMem->segSizes, index);

        uint32_t *currSeg = DynAry_get(myMem->memorySegs, index);

        uint32_t *newSeg0 = malloc(segSize * sizeof(uint32_t));

        for (uint32_t i = 0; i < segSize; i++) {
            newSeg0[i] = currSeg[i];
        }

        free(DynAry_get(myMem->memorySegs, 0));

        DynAry_set(myMem->memorySegs, 0, newSeg0);
        DynAry_set(myMem->segSizes, 0, (void *)(uintptr_t)segSize);
    }

}

void Seg_Store(UM_Memory myMem, uint32_t index, uint32_t offset, 
                                                uint32_t value)
{

    uint32_t *currSeg = DynAry_get(myMem->memorySegs, index);

    currSeg[offset] = value;

}


uint32_t Seg_Load(UM_Memory myMem, uint32_t index, uint32_t offset)
{
    uint32_t *currSeg = DynAry_get(myMem->memorySegs, index);
    return currSeg[offset];

}



void *getSeg0(UM_Memory myMem)
{
    assert(myMem != NULL);
    return DynAry_get(myMem->memorySegs, 0);
}


uint32_t getSeg0Size(UM_Memory myMem)
{
    assert(myMem != NULL);
    return (uint32_t)(uintptr_t)DynAry_get(myMem->segSizes, 0);
}




UStack_T UStack_new()
{
    UStack_T uStack = malloc(sizeof(*uStack));
    //assert(uStack != NULL);
    uStack->currSize = 0;
    uStack->capacity = 10;
    uStack->bufferArray = malloc(10 * sizeof(uint32_t));
    //assert(uStack->bufferArray != NULL);

    return uStack;
}

void UStack_free(UStack_T *uStack)
{

    free((*uStack)->bufferArray);
    free(*uStack);
}


void UStack_push(UStack_T uStack, uint32_t elem)
{
    
    if (uStack->currSize == uStack->capacity) {
        UStack_expand(uStack);
    } 
    
    uStack->bufferArray[uStack->currSize] = elem;
    uStack->currSize++;

}

uint32_t UStack_pop(UStack_T uStack)
{
    uStack->currSize--;
    return uStack->bufferArray[uStack->currSize];
}

bool UStack_isEmpty(UStack_T uStack)
{
    if (uStack->currSize == 0) {
        return true;
    } else {
        return false;
    }
}

void UStack_expand(UStack_T uStack)
{
    uStack->bufferArray = realloc(uStack->bufferArray, 
        (uStack->capacity * 2 + 1) * sizeof(uint32_t));
    uStack->capacity = (uStack->capacity * 2 + 1);
}

DynAry_T DynAry_new()
{
    DynAry_T ary = malloc(sizeof(*ary));
    assert(ary != NULL);
    ary->currSize = 0;
    ary->capacity = 8;
    ary->ptrArray = malloc(8 * sizeof(unsigned long));
    assert(ary->ptrArray != NULL);

    return ary;
}

void DynAry_free(DynAry_T *ary)
{
    assert((ary != NULL) && (*ary != NULL) && 
                ((*ary)->ptrArray != NULL));

    free((*ary)->ptrArray);
    free(*ary);
    
}

uint32_t DynAry_push(DynAry_T ary, void *elem)
{
    assert(ary != NULL);

    if (ary->currSize == ary->capacity) {
        DynAry_expand(ary);
    }

    ary->ptrArray[ary->currSize] = (unsigned long) elem;
    ary->currSize++;

    return (ary->currSize - 1);
}

void DynAry_set(DynAry_T ary, uint32_t index, void *elem)
{
    assert(ary != NULL);
    ary->ptrArray[index] = (unsigned long) elem;
}

void *DynAry_get(DynAry_T ary, uint32_t index)
{
    return ((void *) ary->ptrArray[index]);
}

void DynAry_expand(DynAry_T ary)
{

    ary->ptrArray = realloc(ary->ptrArray, 
        (ary->capacity * 2 + 1) * sizeof(unsigned long));
        
    ary->capacity = (ary->capacity * 2 + 1);

}

uint32_t DynAry_size(DynAry_T ary)
{
    assert(ary != NULL);
    return ary->currSize;
}