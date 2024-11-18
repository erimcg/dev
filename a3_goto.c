#include <stdio.h>

int main() {

	int x = 0;
	int y = 0;

	printf("Enter two integers with a space between them: ");	
	scanf("%d %d", &x, &y);

    // print the integers in the interval [x,y)
	int i = x;

    	goto test1;

print_interval:
    	printf("%d\n", i);
	i++;

test1:
	if (i < y)
		goto print_interval;


    // compute and print the sum of the numbers in the interval [x,y)
	int sum = 0;
	i = x;

    	goto test2;

compute_sum:
	sum += i;
	i++;

test2:
	if (i < y)
        	goto compute_sum;

	printf("sum: %d\n", sum);

    // compute and print the number of even integers in the interval [x,y)
	int num_even = 0;
	i = x;

    	goto test3;

count_evens:
	if (i % 2 != 0)
        	goto increment_i;
    
    	num_even++;
    
increment_i:
	i++;

test3:
	if (i < y) 
        	goto count_evens;

	printf("num even: %d\n", num_even);

	return 0;
}
