#include <stdio.h>


int main(void) {
    int i;
    char ch;
    for (int i = 0; i < 0x10000; ++i) {
        ch = i;
        printf("%x, %x\n", i, ch & 0xff);
    }
    return 0;
}
