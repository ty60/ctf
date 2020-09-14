#include <stdio.h>
#include <stdlib.h>


int main(void) {
    char *p = realloc(NULL, 0x68);
    printf("%p\n", p);
    realloc(p, 0);
    // p = realloc(NULL, 0x68);
    p = calloc(1, 0x68);
    printf("%p\n", p);

    return 0;
}
