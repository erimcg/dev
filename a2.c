#include <stdio.h>

int main() {

	int m = 0;
	int k = 0;

    printf("Enter two integers separated by a space: ");
	scanf("%d %d", &m, &k);

	if (m < k) {
		printf("%d < %d\n", m, k);
	}

	m++;

	if (m == 0) {
		printf("%d == 0\n", m);
	}

	int product = m * k;

	if (product != 20) {
		printf("%d * %d != 20\n", m, k);
	}

	int sum = m + k;

	if (sum >= 20) {
		printf("%d >= 20\n", sum);
	}
	else {
		printf("%d < 20\n", sum);
	}

	sum = sum << 2;

	printf("%d\n", sum);

	return 0;
}