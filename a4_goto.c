#include <stdio.h>

int main() {

	int x = 0;
	int y = 0;

	printf("Enter two integers with a space between them: ");	
	scanf("%d %d", &x, &y);

	// swap the values of x and y if x is larger than y
    	if (x <= y) 
        	goto finished_swap;

	int temp = x;
	x = y;
	y = temp;

finished_swap:

	// print on a single line the values between x and y (inclusively)
    	;   // added noop statement because vars can't be declared immediately after label
	int i = x;
    	goto test1;

print_interval:
	printf("%d ", i);
    	i++;

test1:
    	if(i <= y)
        	goto print_interval;

	printf("\n");
	
	// print on a single line the multiples of 3 between x and y (inclusively)
    	i = x;
    	goto test2;

print_multiples_of_3:
	if (i % 3 != 0)
        	goto increment_i1;

	printf("%d ", i);

increment_i1:
    	i++;

test2:
    	if (i <= y)
        	goto print_multiples_of_3;

	printf("\n");

	// print the sum of the multiples of 3 between x and y (inclusively)
	int sum = 0;
    	i = x;
    	goto test3;

compute_sum:
	if (i % 3 != 0)
        	goto increment_i2;

	sum += i;

increment_i2:
    	i++;

test3:
    	if (i <= y)
        	goto compute_sum;

    	printf("sum: %d\n", sum);

	return 0;
}
