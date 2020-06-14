#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>


int main(void) {
    char *ps[9];
    int i;
    for (i = 0; i < 9; i++) {
        ps[i] = malloc(0x200);
    }
    for (i = 0; i < 8; i++) {
        free(ps[i]);
    }
    malloc(0x1f0);
    read(0, ps[0], 0);
    return 0;
}
