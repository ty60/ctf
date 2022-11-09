#include <stdio.h>
#include <stdlib.h>


int main(int argc, char *argv[]) {
    unsigned int x = atoi(argv[1]);
    unsigned int i = 0;

    // while (x != 0) {
    for (; x != 0; x /= 2) {
        printf("%ud\n", x);
        if ((x & 1) != 0) {
            i += 3;
        }
        // x = (unsigned long)x >> 1;
        // printf("%lx\n", x);
    }

    printf("Result: %ld\n", i);
    printf("Result: %lx\n", i);
    return 0;
}
