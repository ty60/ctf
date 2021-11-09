#include <stdio.h>

#define LEN_2 (0x25)


extern int f(int x, int y, int *a, int *b);


int main(void) {
    int i;
    for (i = 0; i < LEN_2; i++) {
        int a, b;
        f(i, LEN_2, &a, &b);
        if (a < 0) {
            a += LEN_2;
        }
        printf("%d\n",  a);
    }
    return 0;
}
