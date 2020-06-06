#include <stdio.h>
#include <limits.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <malloc.h>
#include <signal.h>

#define GRIMOIRE_SIZE 0x200

#define SIZE 0x200

char *filename = "%x";

int main(void)
{
    char *p = malloc(0x100);
    printf("%lx\n", malloc_usable_size(p));
    *(unsigned long *)(p - 0x8) = SIZE | 0x1;
    printf("%lx\n", malloc_usable_size(p));
    // setup inuse bit
    *(unsigned long *)(p - 0x8 + SIZE) = 0x31;
    printf("%lx\n", malloc_usable_size(p));

    return 0;
}
