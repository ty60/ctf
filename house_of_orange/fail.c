#include <stdio.h>
#include <stdlib.h>


int main(void) {
    setbuf(stdout, NULL);

    char *p = malloc(0x38);
    // Overwrite top ramdomly
    *(unsigned long *)(p + 0x38) = 0x71;
    // Top is now 0x71, so the next malloc will invoke sysmalloc
    malloc(0x100);
}
