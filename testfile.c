#include "UStack.h"
#include "DynAry.h"
#include "seg.h"
#include "instructions.h"
#include <stdio.h>

int main() 
{
    // printf("test\n");

    // UStack_T myStack = UStack_new(10);

    // for (uint32_t i = 0; i < 20; i++) {
    //     UStack_push(myStack, i);
    // }

    // for (uint32_t i = 0; i < 20; i++) {
    //     printf("%d  ", (int) UStack_pop(myStack));
    // }
    

    // printf("%s\n", (UStack_isEmpty(myStack) ? "true" : "false"));

    // UStack_pop(myStack);

    // UStack_free(&myStack);

    DynAry_T myary = DynAry_new();

    for (uint32_t i = 0; i < (uint32_t) 1 << 31; i++)
    {
        DynAry_push(myary, (void *) (intptr_t) i);
        
    }

    printf("cap: %u\n", (uint32_t) 1 << 31);

    printf("cap: %u\n", (uint32_t) ~0);



    // uint32_t seg[3] = {435, 340, 134};

    // printf("%d  " , (int) DynAry_push(myary, (void *) seg));

    // uint32_t *segptr = (uint32_t *) DynAry_get(myary, 12);

    // printf("%d\n", (int) segptr[0]);
    // printf("%d\n", (int) segptr[1]);
    // printf("%d\n", (int) segptr[2]);

    
    // printf("\n");

    // printf("%p\n", DynAry_get(myary, 3));

    // DynAry_set(myary, 3, NULL);

    // printf("%p\n", DynAry_get(myary, 3));

    // printf("\n");

    // DynAry_free(&myary);

    // UM_Memory myMem = initUMMemory(NULL, 0);

    // printf("%d\n", Seg_map(myMem, 100));

    // printf("%d\n", Seg_map(myMem, 300));

    // Seg_unmap(myMem, 1);

    // printf("%d\n", Seg_map(myMem, 100));

    // Seg_Store(myMem, 1, 25, 12);

    // printf("%d\n", Seg_Load(myMem, 1, 24));
    // printf("%d\n", Seg_Load(myMem, 1, 25));

    // freeUMMemory(&myMem);

    // output(input());

    // printf("\n");

    return 0;
}