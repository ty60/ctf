#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    char *p = malloc(0x4f8);
    p[0] = 'a';
    char *p1 = malloc(0x20);
    p1[0] = 'b';
    free(p1);
    free(p);
    return 0;
}
