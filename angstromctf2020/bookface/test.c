#include <stdlib.h>
#include <sys/mman.h>


int main(void)
{
    char *p = mmap(0, 0x1000, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS|MAP_FIXED, -1, 0);
}
