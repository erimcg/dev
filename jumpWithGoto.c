#include <stdio.h>

int main() {

	int m = 0;
	int k = 0;

    printf("Enter two integers separated by a space: ");
	scanf("%d %d", &m, &k);

    if (m >= k) {
        goto mGreaterEqualk;
    }

	printf("%d < %d\n", m, k);

mGreaterEqualk:

	m++;

    if (m != 0) {
        goto mNotEqualZero;
    }
	
	printf("m++: %d == 0\n", m);

mNotEqualZero: ; //added empty statement

	int product = m * k;

    if (product == 20) {
        goto productEqual20;
    }

	printf("%d * %d = %d != 20\n", m, k, product);

productEqual20: ; //added empty statement

	int sum = m + k;  

    if (sum < 20) {
        goto sumLessThan20;
    }

	printf("sum: %d >= 20\n", sum);
    goto restOfCode;

sumLessThan20:

    printf("sum: %d < 20\n", sum);

restOfCode:

	sum = sum << 2;

	printf("sum * 4: %d\n", sum);

	return 0;
}