#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <stdbool.h>
#include <sys/stat.h>
#include "UStack.h"
#include "DynAry.h"
#include "seg.h"
#include "instructions.h"
#include "bitpack.h"

typedef enum Um_opcode {
        CMOV = 0, SLOAD, SSTORE, ADD, MUL, DIV,
        NAND, HALT, ACTIVATE, INACTIVATE, OUT, IN, LOADP, LV
} Um_opcode;

void *storeProgram(FILE *inputfp, uint32_t fsize);
uint32_t readaWord(FILE *input);
void runUM(UM_Memory umMem);

uint32_t getRaId(uint32_t currIns);
uint32_t getRbId(uint32_t currIns);
uint32_t getRcId(uint32_t currIns);


int main(int argc, char **argv)
{
    if (argc != 2) {
        perror("Exit. Usage: ./um PROGRAM.um\n");
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

/*
 sto
*/
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

/*
 runUM
 Purpose: Guides the flow of control within a machine cycle by using a switch
          statement. Leads program to corresponding operation function
 Parameters: UM_Memory umMem - struct containing dynamic array and stack to
             keep track of the memory segments
 Returns: N/A
*/
void runUM(UM_Memory umMem)
{
    uint32_t r[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    uint32_t pCounter = 0;
    bool haltState = false;

    uint32_t *segProgram = (uint32_t *) getSeg0(umMem);
    uint32_t programSize = getSeg0Size(umMem);

    Um_opcode currOpc = HALT;
    uint32_t currIns = 0;

    while((!haltState) && (pCounter < programSize)){
        currIns = segProgram[pCounter];
        currOpc = Bitpack_getu(currIns, 4, 28);

        switch(currOpc) {
            case CMOV :
                i_cmove(r + getRaId(currIns), r + getRbId(currIns),
                                            r + getRcId(currIns));
                break;
            case SLOAD:
                r[getRaId(currIns)] =
                    Seg_Load(umMem, r[getRbId(currIns)], r[getRcId(currIns)]);
                break;
            case SSTORE:
                Seg_Store(umMem, r[getRaId(currIns)], r[getRbId(currIns)],
                                                    r[getRcId(currIns)]);
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

            case ACTIVATE:
                r[getRbId(currIns)] = Seg_map(umMem, r[getRcId(currIns)]);
                break;

            case INACTIVATE:
                Seg_unmap(umMem, r[getRcId(currIns)]);
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
                programSize = getSeg0Size(umMem);
                pCounter = r[getRcId(currIns)];
                break;

            case LV:
                r[Bitpack_getu(currIns, 3, 25)] = Bitpack_getu(currIns, 25, 0);
                break;

            default:
                haltState = true;
                perror("INVALID OPCODE. STOPPED.\n");
                break;
        }

        if (currOpc != LOADP) {
            pCounter++;
        }
    }
}

/*
 getRaId
 Purpose: Get register ra stored in the current instruction
 Parameters: uint32_t currIns - 32 bit word that contains instructions
 Returns: a uint32_t representing register ra extracted from the word
*/
uint32_t getRaId(uint32_t currIns)
{
    return Bitpack_getu(currIns, 3, 6);
}

/*
 getRbId
 Purpose: Get register rb stored in the current instruction
 Parameters: uint32_t currIns - 32 bit word that contains instructions
 Returns: a uint32_t representing register rb extracted from the word
*/
uint32_t getRbId(uint32_t currIns)
{
    return Bitpack_getu(currIns, 3, 3);
}

/*
 getRcId
 Purpose: Get register rc stored in the current instruction
 Parameters: uint32_t currIns - 32 bit word that contains instructions
 Returns: a uint32_t representing register rc extracted from the word
*/
uint32_t getRcId(uint32_t currIns)
{
    return Bitpack_getu(currIns, 3, 0);
}
