#include <stdlib.h>
#include <stdio.h>


int main(void) {
    char *p1 = malloc(0x100);
    char *p2 = malloc(0x40);
    char *p3 = malloc(0x40);

    free(p1);
    free(p2);
    return 0;
}
