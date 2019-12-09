#include <stdio.h>
#include <string.h>
#include <stdlib.h>


int main(void)
{
    setlinebuf(stderr);
    char *p = malloc(130 * 8);
    strcpy(p, "AAAA\n");
    fwrite("Overflow is detected.\n", 1uLL, 0x16uLL, stderr);
    free(p);
    p = malloc(130 * 8);
    return 0;
}
