#include <stdio.h>


int main(void)
{
    printf("%7$x\n", 1, 2, 3, 4, 5, 6, 7);
    printf("%7$0100x\n", 1, 2, 3, 4, 5, 6, 7);

    return 0;
}
