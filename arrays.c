#include <stdio.h>

int main() {

        int arr[] = { 5, 4, 3, 2, 1 };

        printf("arr: %p\n", arr);  // 0x...
        printf("sizeof arr: %lu\n\n", sizeof(arr));  // 20

        printf("elm at arr: %d\n", *arr);  // 5
        printf("sizeof elm at arr: %lu\n", sizeof(*arr));  // 4
        printf("sizeof int: %lu\n\n", sizeof(int));  // 4

        int arrLen = sizeof(arr) / sizeof(*arr); 
        printf("length of array: %d\n\n", arrLen);  // 5

        // compiler knows that arr is a pointer to int, so adding i to arr adds (i * 4) to arr
        for(int i = 0; i < arrLen; i++) {
                printf("add of elm @ index %d: %p\n", i, arr + i);
        }
        printf("\n");

        // dereference to get the elements
        for(int i = 0; i < arrLen; i++) {
                printf("elm @ %d: %d\n", i, *(arr + i));
        }
        printf("\n");

        // arr[i] does the addition and dereferencing
        for(int i = 0; i < arrLen; i++) {
                printf("elm @ %d: %d\n", i, arr[i]);
        }
        printf("\n");

        void* ptr = arr;

        // since ptr is now a void pointer, adding i to ptr only adds i to address
        for(int i = 0; i < arrLen; i++) {
                printf("addr of elm @ index %d: %p\n", i, ptr + i * 4);
        }
        printf("\n");

        // cast the pointer to a pointer to an int (int *), then dereference
        for(int i = 0; i < arrLen; i++) {
                printf("elm @ %d: %d\n", i, *(int *)(ptr + i * 4));
        }
        printf("\n");

        /* 2D arrays */
        printf("*** 2D Arrays ***\n\n");

        int m[][3] = { { 1, 2, 3 }, { 4, 5, 6 } };       

        printf("size of m: %lu\n", sizeof(m));
        printf("size of *m (m[0]): %lu\n", sizeof(*m));
        printf("size of **m (m[0][0]): %lu\n\n", sizeof(**m));

        int numRows = sizeof(m) / sizeof(*m);
        int numCols = sizeof(*m) / sizeof(**m);

        printf("num rows: %d, num cols: %d\n\n", numRows, numCols);

        printf("m: %p\n\n", m);

        // m + i allows us to get the addresses of the first elms in each row
        for(int i = 0; i < numRows; i++) {
                printf("row %d addr: %p\n", i, m + i);
        }
        printf("\n");

        // cast m + i to a pointer to an int to get the address of the first elm in the row
        // then add j to get to the address of the jth elm in the row
        for(int i = 0; i < numRows; i++) {
                for (int j = 0; j < numCols; j++) {
                        printf("row %d, col %d, addr %p\n", i, j, (int *)(m + i) + j);
                }
                printf("\n");
        }
        printf("\n");

        // dereference to get the elements
        for(int i = 0; i < numRows; i++) {
                for (int j = 0; j < numCols; j++) {
                        printf("%d ", *((int *)(m + i) + j) );
                }
                printf("\n");
        }
        printf("\n");

        ptr = m;

        // move the address in m to a void *
        // calculate pointers to each int in m
        // cast each pointer to a pointer of an int, then dereference
        for(int i = 0; i < numRows; i++) {
                for (int j = 0; j < numCols; j++) {
                        printf("%d ", *(int *)(ptr + (4 * numCols * i) + (4 * j)));
                }
                printf("\n");
        }
        printf("\n");

        // or you can do this :)
        for(int i = 0; i < numRows; i++) {
                for (int j = 0; j < numCols; j++) {
                        printf("%d ", m[i][j]);
                }
                printf("\n");
        }
        printf("\n");

        return 0;
}