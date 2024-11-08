#include <stdio.h>

int main() {
    printf("Enter two integers separated by spaces: ");

    char x = 0;
    char y = 0;
    scanf("%hhd %hhd", &x, &y);

    char sum = x + y;
    sum = sum << 2;

    printf("%hhd + %hhd = %hhd\n", x, y, sum);

    return 0;
}