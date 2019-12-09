#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


int main(void)
{
    char *p = (char *)realloc(NULL, 0x500);
    p = realloc(p, 0x4e0);
    p = realloc(p, 0x18);
    p = realloc(p, 0x88);
    free(p);
    p = realloc(p, 0x18);
    p = realloc(p, 0);

    p = realloc(p, 0x68);
    free(p);
    free(p);

    p = realloc(p, 0x4c0);
    p = realloc(p, 0);

    p = realloc(p, 0x18);
    p = realloc(p, 0x88);

    p = realloc(p, 0);
    p = realloc(p, 0x68);

    malloc(0x68);
    return 0;
}
