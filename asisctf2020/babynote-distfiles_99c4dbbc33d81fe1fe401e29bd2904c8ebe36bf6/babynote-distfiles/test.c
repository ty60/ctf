#include <stdio.h>
#include <stdlib.h>


int main(void) {
    unsigned long *p = malloc(0x18);
    printf("%p\n", p);
    return 0;
}
