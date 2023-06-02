#include "DynAry.h"

#define T DynAry_T

struct T {
    uint32_t currSize;
    uint32_t capacity;
    unsigned long *ptrArray;
};

void DynAry_expand(T ary);


T DynAry_new()
{
    T ary = malloc(sizeof(*ary));
    assert(ary != NULL);
    ary->currSize = 0;
    ary->capacity = 8;
    ary->ptrArray = malloc(8 * sizeof(unsigned long));
    assert(ary->ptrArray != NULL);

    return ary;
}


void DynAry_free(T *ary)
{
    assert((ary != NULL) && (*ary != NULL) && 
                ((*ary)->ptrArray != NULL));

    free((*ary)->ptrArray);
    free(*ary);
    
}




uint32_t DynAry_push(T ary, void *elem)
{
    assert(ary != NULL);

    if (ary->currSize == ary->capacity) {
        DynAry_expand(ary);
    }

    ary->ptrArray[ary->currSize] = (unsigned long) elem;
    ary->currSize++;

    return (ary->currSize - 1);

}


void DynAry_set(T ary, uint32_t index, void *elem)
{
    assert(ary != NULL);
    assert(index < ary->currSize);

    ary->ptrArray[index] = (unsigned long) elem;
}




void *DynAry_get(T ary, uint32_t index)
{
    assert(ary != NULL);
    return ((void *) ary->ptrArray[index]);
}



void DynAry_expand(T ary)
{
    unsigned long *newPtr = NULL;
    assert(ary->capacity != (uint32_t) ~0);
    if (ary->capacity < ((uint32_t) 1 << 31)) {
        newPtr = realloc(ary->ptrArray, 
            (ary->capacity * 2 + 1) * sizeof(unsigned long));

        if (newPtr == NULL) {
            newPtr = malloc((ary->capacity * 2 + 1) * sizeof(unsigned long));
            assert(newPtr != NULL);
            for (uint32_t i = 0; i < ary->currSize; i++) {
                newPtr[i] = (ary->ptrArray)[i];
            }
            free(ary->ptrArray);
            ary->ptrArray = newPtr;
        } else {
            ary->ptrArray = newPtr;
        }
        
        ary->capacity = (ary->capacity * 2 + 1);
    } else {
        newPtr = realloc(ary->ptrArray, 
            ((uint32_t) ~0) * sizeof(unsigned long));

        if (newPtr == NULL) {
            newPtr = malloc(((uint32_t) ~0) * sizeof(unsigned long));
            assert(newPtr != NULL);
            for (uint32_t i = 0; i < ary->currSize; i++) {
                newPtr[i] = (ary->ptrArray)[i];
            }
            free(ary->ptrArray);
            ary->ptrArray = newPtr;
        } else {
            ary->ptrArray = newPtr;
        }


        ary->capacity = ((uint32_t) ~0);        
    }

    //printf("currcap: %u\n", ary->capacity);
    
}

uint32_t DynAry_size(T ary)
{
    assert(ary != NULL);

    return ary->currSize;

}