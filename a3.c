#include <stdio.h>

int main() {

	int x = 0;
	int y = 0;

	printf("Enter two integers with a space between them: ");	
	scanf("%d %d", &x, &y);

    // print the integers in the interval [x,y)
	int i = x;
	while(i < y) {
		printf("%d\n", i);
		i++;
	}

    // compute and print the sum of the numbers in the interval [x,y)
	int sum = 0;
	i = x;
	while (i < y) {
		sum += i;
		i++;
	}
	printf("sum: %d\n", sum);

    // compute and print the number of even integers in the interval [x,y)
	int num_even = 0;
	i = x;
	while (i < y) {
		if (i % 2 == 0) {
			num_even++;
		}
		i++;
	}
	printf("num even: %d\n", num_even);

	return 0;
}