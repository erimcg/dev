#include <stdio.h>

int max(int x1, int x2, int x3, int x4, int x5, int x6) {
        int max = x1;
        max = (x2 > max) ? x2 : max;
        max = (x3 > max) ? x3 : max;
        max = (x4 > max) ? x4 : max;
        max = (x5 > max) ? x5 : max;
        max = (x6 > max) ? x6 : max;
        return max;
}

int add(int a, int b) {
        return a + b;
}

int factorial(int n) {
        if (n == 0 || n == 1)
                return 1;
        else 
                return n * factorial(n-1);
}

int main() {

        printf("Please enter 6 integers separated by spaces: ");

        int x1, x2, x3, x4, x5, x6;

        scanf("%d %d %d %d %d %d", &x1, &x2, &x3, &x4, &x5, &x6);

        int largest = max(x1, x2, x3, x4, x5, x6);

        printf("largest: %d\n", largest);

        int sum = add(x1, add(x2, add(x3, add(x4, add(x5, x6)))));

        printf("sum: %d\n", sum);

        for(int i = 0; i <= 10; i++) {
                printf("%d! = %d\n", i, factorial(i));
        }

        return 0;
}