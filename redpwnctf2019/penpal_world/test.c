#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    char *p = malloc(0x100);
    int i;
    printf("%p\n", (char *)*p);
    for (i = 0; i < 7; i++) {
        printf("%d\n", i);
        printf("%p\n", (char *)*p);
        free(p);
    }

    char *q = malloc(0x200);
    free(q);
    free(q);
    return 0;
}
