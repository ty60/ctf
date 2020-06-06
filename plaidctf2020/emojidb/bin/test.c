#include <stdio.h>
#include <wchar.h>
#include <locale.h>


int main(void) {
    unsigned long data = 0x00007ffff7dcfca0;

    // 0x00005555557584e0  →  0x00007ffff7dcfca0
    setlocale(LC_ALL, "en_US.UTF-8");
    fputws(L"hoge\n", stdout);
    // fputws((wchar_t *)&data, stdout);
    return 0;
}
