#include "seg.h"

#define T UM_Memory

struct T {
    DynAry_T memorySegs;
    DynAry_T segSizes; /*stores the size of each segment*/
    UStack_T reusable;
};

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

    /*free each segment in memorySegs */
    uint32_t sizeMem = DynAry_size((*myMem)->memorySegs);
    for (uint32_t i = 0; i < sizeMem; i++)
    {
        uint32_t *currSegPtr = DynAry_get((*myMem)->memorySegs, i);
        if (currSegPtr != NULL) {
            free(currSegPtr); /*aborting error here*/
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
    uint32_t *segPtr = DynAry_get(myMem->memorySegs, index);
    assert(segPtr != NULL);

    /*what happen if segPtr is already unmapped? or index is 0? */

    free(segPtr);

    DynAry_set(myMem->memorySegs, index, NULL);

    DynAry_set(myMem->segSizes, index, NULL);

    UStack_push(myMem->reusable, index);

}


void loadProgram(UM_Memory myMem, uint32_t index)
{
    assert(myMem != NULL);

    if (index != 0) {
        assert(index < DynAry_size(myMem->memorySegs));
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
    assert(myMem != NULL);
    assert(index < DynAry_size(myMem->memorySegs));
    uint32_t segSize = (uint32_t)(uintptr_t)DynAry_get(myMem->segSizes, index);
    assert(offset < segSize);

    uint32_t *currSeg = DynAry_get(myMem->memorySegs, index);

    currSeg[offset] = value;

}

uint32_t Seg_Load(UM_Memory myMem, uint32_t index, uint32_t offset)
{
    assert(myMem != NULL);
    assert(index < DynAry_size(myMem->memorySegs));
    uint32_t segSize = (uint32_t)(uintptr_t)DynAry_get(myMem->segSizes, index);
    assert(offset < segSize);

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