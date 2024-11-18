
#include <stdio.h>

int main() {

    /* Table of code pointers */
    static void *jt[7] = {
        &&loc_0,    //case 0:
        &&loc_def,  //case 1: -> default:
        &&loc_2,    //case 2:
        &&loc_3,    //case 3:
        &&loc_6,    //case 4: -> case 6:
        &&loc_def,  //case 5: -> default:
        &&loc_6     //case 6:
    };

    unsigned int n = 0;
    printf("Enter an integer [0-6]: ");
    scanf("%ud", &n);

    int result = 0;

    if (n > 6)
        goto loc_def;

    goto *jt[n];

loc_0:
    result = 0;
    goto done;

loc_2:
    result = 2;
        
loc_3:
    result += 3;
    goto done;

loc_6:
    result = 6;
    goto done;

loc_def:
    result = -1;

done:
    printf("result: %d\n", result);

}