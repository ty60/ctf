#include <stdio.h>
#include <stdlib.h>


int main(void) {
    unsigned long *ps[10];
    ps[0] = malloc(0x68);
    free(ps[0]);

    // Overwrite chunk size
    *(ps[0] - 1) = 0x7fUL;
    *(ps[0] - 1) = 0xfff7a6280000007f;
    *(ps[0] - 1) = 0xfff7a6280000009f;

    malloc(0x68);
}
