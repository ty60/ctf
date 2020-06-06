#define _POSIX_C_SOURCE 200809L
#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>


char *genlinen(unsigned long n)
{
    char fmt[128];
    char *p = malloc(n);
    sprintf(fmt, "%%0%lud", n);
    sprintf(p, fmt, 0);
    //puts(p);
    return p;
}


int main(void)
{
    unsigned long i;
    for (i = 0; i < 0x450; i += 8) {
        char *org = genlinen(i);
        char *p = strdup(org);
        printf("0x%lx: 0x%lx\n", i, *(unsigned long *)(p - 8));
        free(org);
        free(p);
    }

    return 0;
}
