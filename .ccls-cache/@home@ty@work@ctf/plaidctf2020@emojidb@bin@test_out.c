#include <stdio.h>
#include <wchar.h>
#include <locale.h>
#include <string.h>


int main(void) {
    wchar_t buf[1024];
    memset(buf, 0, sizeof(buf));
    setlocale(LC_ALL, "");
    fgetws(buf, 1024, stdin);
    fputws(buf, stdout);
    return 0;
}
