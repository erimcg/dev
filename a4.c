#include <stdio.h>

int main() {

	int x = 0;
	int y = 0;

	printf("Enter two integers with a space between them: ");	
	scanf("%d %d", &x, &y);

	// swap the values of x and y if x is larger than y
	if (x > y) {
		int temp = x;
		x = y;
		y = temp;
	}

	// print on a single line the values between x and y (inclusively)
	int i;
	for(i = x; i <= y; i++) {
		printf("%d ", i);
	}
	printf("\n");
	
	// print on a single line the multiples of 3 between x and y (inclusively)
	for(i = x; i <= y; i++) {
		if (i % 3 == 0) {
			printf("%d ", i);
		}
	}
	printf("\n");

	// print the sum of the multiples of 3 between x and y (inclusively)
	int sum = 0;
	for (i = x; i <= y; i++) {
		if (i % 3 == 0) {
			sum += i;
		}
	}
	printf("sum: %d\n", sum);

	return 0;
}