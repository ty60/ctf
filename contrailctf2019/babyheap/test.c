#include <stdlib.h>


int main()
{
    unsigned long *p = malloc(0x108);
    *(p - 1) = 0;
    free(p);
}
