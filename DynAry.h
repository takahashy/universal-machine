/******************************************************************************
 *                     DynAry.h
 *
 *     Assignment: 
 *     Authors: 
 *     Date: 
 *
 *     Contains the interface of the DynAry data structure.
 *     DynAry is a self-expanding array of pointers that the user can push, 
 *     extract, set elements in that array. Note that due to its specific 
 *     purpose, the delete option will not be available to the user.
 *     The index of DnyAry will be in form of uint32_t
 *     
 *     
 *
 *****************************************************************************/

#ifndef DYNARY_H
#define DYNARY_H

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>

#define T DynAry_T
typedef struct T *T;

T DynAry_new();
void DynAry_free(T *ary);

/*push returns the index of the element that is placed in the array*/
uint32_t DynAry_push(T ary, void *elem);

void DynAry_set(T ary, uint32_t index, void *elem);

void *DynAry_get(T ary, uint32_t index);

uint32_t DynAry_size(T ary);


#undef T
#endif