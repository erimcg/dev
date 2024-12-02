#include <stdio.h>

void printArray(int len, int arr[]) {
        for(int i = 0; i < len; i++) {
                printf("%d ", arr[i]);
        }
        printf("\n");
}

void printMultiArray(int numRows, int numCols, int m[numRows][numCols]) {
        for(int i = 0; i < numRows; i++) {
                printArray(numCols, m[i]);
        }
}

void swap(int len, int arr1[], int arr2[]) {
        for(int i = 0; i < len; i++) {
                arr2[i] = arr1[i] ^ arr2[i]; 
                arr1[i] = arr1[i] ^ arr2[i]; 
                arr2[i] = arr1[i] ^ arr2[i];
        }
}

int main() {

        int array1[] = { 1, 1, 1, 1 };
        int array2[] = { 2, 2, 2, 2 };

        printArray(4, array1);
        printArray(4, array2);
        printf("\n");

        swap(4, array1, array2);

        printArray(4, array1);
        printArray(4, array2);
        printf("\n");

        int twoDee[][4] = { 3, 3, 3, 3, 4, 4, 4, 4 };
        printMultiArray(2, 3, twoDee);
        printf("\n");

        swap(4, twoDee[0], twoDee[1]);
        printMultiArray(2, 4, twoDee);
        printf("\n");

        swap(4, array1, twoDee[0]);
        printArray(4, array1);
        printf("\n");

        printMultiArray(2, 4, twoDee);
}