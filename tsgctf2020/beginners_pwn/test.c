#include <stdio.h>
#include <string.h>
#include <unistd.h>


int main(void) {
    char buf[1024];
    gets(buf);
    printf(buf);
    return 0;
}
