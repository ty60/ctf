// gcc -o wcstombs wcstombs.c


#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <unistd.h>


int main() {
    unsigned char output[0x10] = {0};
    unsigned char input[0x10] = {0};
    setlocale(0, "en_US.UTF-8");

    read(0, input, 0x8);
    wcstombs(output, (wchar_t *)input, 0x10);
    write(1, output, 0x10);

    return 0;
}
