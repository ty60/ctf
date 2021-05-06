#include <stdio.h>
#include <stdlib.h>


int main(void) {
    char buf[1024];
    fgets(buf, sizeof(buf), stdin);
    short n = atoi(buf);

    long long size;
    __asm__ volatile (
            "movsx %0, %1\n\t"
            : "=r"(size)
            : "r"(n)
            );
    printf("size: %lld\n", size);
    return 0;
}
