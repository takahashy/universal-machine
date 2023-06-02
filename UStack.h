/******************************************************************************
 *                     UStack.h
 *
 *     Assignment: 
 *     Authors: 
 *     Date: 
 *
 *     Contains the interface of the unboxed stack of uint32_t data structure.
 *     
 *     
 *
 *****************************************************************************/

#ifndef USTACK_H
#define USTACK_H

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>
#include <stdbool.h>

#define T UStack_T
typedef struct T *T;


T UStack_new();
void UStack_free(T *uStack);
void UStack_push(T uStack, uint32_t elem);
uint32_t UStack_pop(T uStack);
bool UStack_isEmpty(T uStack);

#undef T
#endif