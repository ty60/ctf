#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    char *p = (char *)alloca((size_t)0x20);
    fgets(p, 0x20, stdin);
    puts(p);
}
