
#include <stdio.h>

int main() {

    unsigned int n = 0;
    printf("Enter an integer [0-6]: ");
    scanf("%ud", &n);

    int result = 0;
    switch(n) {
        case 0:
            result = 0;
            break;

        case 2:
            result = 2;
        
        case 3:
            result += 3;
            break;

        case 4:
        case 6:
            result = 6;
            break;

        default:
            result = -1;
    }

    printf("result: %d\n", result);

}