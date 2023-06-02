#ifndef SEG_H
#define SEG_H


#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <stdbool.h>
#include "UStack.h"
#include "DynAry.h"

#define T UM_Memory
typedef struct T *T;


UM_Memory initUMMemory(void *program, uint32_t sizeProgram);

void freeUMMemory(UM_Memory *myMem);

uint32_t Seg_map(UM_Memory myMem, uint32_t size);

void Seg_unmap(UM_Memory myMem, uint32_t index);

void loadProgram(UM_Memory myMem, uint32_t index);

void Seg_Store(UM_Memory myMem, uint32_t index, uint32_t offset, 
                                                uint32_t value);

uint32_t Seg_Load(UM_Memory myMem, uint32_t index, uint32_t offset);

void *getSeg0(UM_Memory myMem);

uint32_t getSeg0Size(UM_Memory myMem);



#undef T
#endif