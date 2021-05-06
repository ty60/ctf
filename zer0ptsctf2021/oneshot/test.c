#include <stdio.h>
#include <stdlib.h>


int main(void) {
    unsigned long mmap_threashold = 131072 * 2;
    char *p = malloc(mmap_threashold);
    *p = 'a';
    printf("0x%llx\n", (unsigned long long)system - (unsigned long long)p);
    return 0;
}
