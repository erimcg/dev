#include <stdio.h>

int sum(int x, int y) {
	int sum = 0;
	int i = x;

	if (i > y) 
		goto J5;	

J4:
	sum += i;
	i++;

	if (i <= y) 
		goto J4;

J5:
	return sum;
}


int main() {
	int arg1, arg2;

	printf("Enter two integers separated by a space: ");
	scanf("%d %d", &arg1, &arg2);

	if (arg1 <= arg2) 
		goto J1;

	int temp = arg1;
	arg1 = arg2;
	arg2 = temp;

J1:
	printf("arg1: %d, arg2: %d\n", arg1, arg2);

	int i = arg1;

J2:
	printf("%d ", i);
	i++;

	if (i <= arg2) 
		goto J2;

	printf("\n");

	printf("sum: %d\n", sum(arg1, arg2));

	return 0;
}
