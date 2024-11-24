#include <stdio.h>

int main() {

        int arr[] = { 5, 4, 3, 2, 1 };

        printf("arr: %p\n", arr);
        printf("sizeof arr: %lu\n\n", sizeof(arr));

        printf("elm at arr: %d\n", *arr);
        printf("sizeof elm at arr: %lu\n", sizeof(*arr));
        printf("sizeof int: %lu\n\n", sizeof(int));

        int arrLen = sizeof(arr) / sizeof(*arr);
        printf("length of array: %d\n\n", arrLen);

        // compiler knows that arr is a pointer to int, so adding i to arr adds (i * 4) to address
        for(int i = 0; i < arrLen; i++) {
                printf("add of elm @ index %d: %p\n", i, arr + i);  
        }
        printf("\n\n");

        for(int i = 0; i < arrLen; i++) {
                printf("elm @ %d: %d\n", i, *(arr + i));
        }
        printf("\n\n");

        for(int i = 0; i < arrLen; i++) {
                printf("elm @ %d: %d\n", i, arr[i]);
        }
        printf("\n\n");

        void* ptr = arr;

        // since ptr is a void pointer, adding i to ptr only adds i to address
        for(int i = 0; i < arrLen; i++) {
                printf("addr of elm @ index %d: %p\n", i, ptr + i * 4);
        }
        printf("\n\n");

        for(int i = 0; i < arrLen; i++) {
                printf("elm @ %d: %d\n", i, *(int *)(ptr + i * 4));
        }
        printf("\n\n");

        return 0;
}