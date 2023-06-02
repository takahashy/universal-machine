#include "UStack.h"

#define T UStack_T

struct T {
    uint32_t currSize;
    uint32_t capacity;
    uint32_t *bufferArray;
};

void UStack_expand(T uStack);


T UStack_new()
{
    T uStack = malloc(sizeof(*uStack));
    assert(uStack != NULL);
    uStack->currSize = 0;
    uStack->capacity = 10;
    uStack->bufferArray = malloc(10 * sizeof(uint32_t));
    assert(uStack->bufferArray != NULL);

    return uStack;
}


void UStack_free(T *uStack)
{
    assert((uStack != NULL) && (*uStack != NULL) && 
                ((*uStack)->bufferArray != NULL));

    free((*uStack)->bufferArray);
    free(*uStack);
}


void UStack_push(T uStack, uint32_t elem)
{
    assert(uStack != NULL);
    if (uStack->currSize == uStack->capacity) {
        UStack_expand(uStack);
    } 
    
    uStack->bufferArray[uStack->currSize] = elem;
    uStack->currSize++;

}


uint32_t UStack_pop(T uStack)
{
    assert(uStack != NULL);
    assert(!UStack_isEmpty(uStack));

    uStack->currSize--;
    return uStack->bufferArray[uStack->currSize];
}


bool UStack_isEmpty(T uStack)
{
    assert(uStack != NULL);
    if (uStack->currSize == 0) {
        return true;
    } else {
        return false;
    }
}

void UStack_expand(T uStack)
{
    uStack->bufferArray = realloc(uStack->bufferArray, 
        (uStack->capacity * 2 + 1) * sizeof(uint32_t));
    uStack->capacity = (uStack->capacity * 2 + 1);
}