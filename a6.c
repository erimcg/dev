#include<stdio.h>

void say_hello() {
        printf("Hello!\n");
}

int increment(int x) {
        return x + 1;
}

int add(int x, int y) {
        return x + y;
}

void swap(int* x, int *y) {
        *y = *x ^ *y;
        *x = *x ^ *y;
        *y = *x ^ *y;
}

int main() {

        say_hello();

        printf("Please enter two integers (x and y) separated by a space: ");

        int x = 0;
        int y = 0;
        
        scanf("%d %d", &x, &y);

        int z = increment(x);

        printf("x + 1 = %d\n", z);

        z = add(x,y);
        
        printf("x + y = %d\n", z);

        swap(&x, &y);

        printf("x: %d, y: %d\n", x, y);

        return 0;
}