#include <stdio.h>
#include <stdlib.h>


int main(void) {
    char buf[1024];
    fgets(buf, sizeof(buf) - 1, stdin);
    double d;
    d = atof(buf);
}
