#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    for (int size = 0x8; size < 0x100; size += 0x8) {
        char *p = malloc(size);
        printf("req size:   0x%x\n", size);
        printf("chunk size: 0x%lx\n\n", *(unsigned long *)(p - 0x8));
    }
    return 0;
}
