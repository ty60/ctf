#include <stdio.h>


int main(void) {
    unsigned long vars[2];
    printf("%p\n", &vars[0]);
    printf("%p\n", &vars[1]);
    return 0;
}
