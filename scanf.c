#include <stdio.h>

int main() {
    int x = 0;
    int y = 0;

    printf("Enter two integers separated by spaces: ");
    scanf("%d %d", &x, &y);

    int sum = x + y;
    printf("x + y = %d\n", sum);

    return 0;
}