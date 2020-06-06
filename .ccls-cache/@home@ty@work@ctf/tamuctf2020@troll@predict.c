// gcc -masm=intel -o predict ./predict.c

#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main(void)
{
    int i;
    srand(time(NULL));

    for (i = 0; i < 100; i++) {
        int r = rand();
        int ans;
        __asm__("movsxd  rdx, %1\n\t"
        "imul    rdx, 0x14F8B589\n\t"
        "shr     rdx, 0x20\n\t"
        "mov     ecx, edx\n\t"
        "sar     ecx, 0x0D\n\t"
        "cdq\n\t"
        "sub     ecx, edx\n\t"
        "mov     edx, ecx\n\t"
        "imul    edx, 0x186A0\n\t"
        "sub     eax, edx\n\t"
        "mov     edx, eax\n\t"
        "lea     %0, [rdx+1]"
        : "=r" (ans)
        : "r" (r)
        : "rdx", "ecx", "eax"
        );
        printf("%d\n", ans);
    }
    return 0;
}
