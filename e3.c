#include <stdio.h>

int sum(int x, int y) {
	int sum = 0;

	for(int i = x; i <= y; i++) {
		sum += i;
	}

	return sum;
}	


int main() {

	int arg1, arg2;
	
	printf("Please enter two integers separated by a space: ");
	scanf("%d %d", &arg1, &arg2);

	// Ensure that arg1 is smaller than arg2
	if(arg1 > arg2) {
		int temp = arg1;
		arg1 = arg2;
		arg2 = temp;
	}

	printf("arg1: %d, arg2: %d\n", arg1, arg2);

	// Print the integers between arg1 and arg2 inclusively

	int i = arg1;

	do {
		printf("%d ", i);
		i++;

	} while(i <= arg2);
	
	printf("\n");

	// Compute and print the sum of the elements between arg1 and arg2 (inclusively)

	printf("sum: %d\n", sum(arg1, arg2));

	return 0;
}
