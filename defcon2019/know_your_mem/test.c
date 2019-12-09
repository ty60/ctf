#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/resource.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/utsname.h>
#include <dlfcn.h>
#include <err.h>
#include <errno.h>
#include <error.h>
#include <inttypes.h>
#include <fcntl.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <seccomp.h>
#include <time.h>
#include <unistd.h>



#define ADDR_MIN   0x0000100000000000UL  // Low-ish

int main(void)
{
    void *addr = (void *)(ADDR_MIN * 0x5);
    void *ret = mmap(addr, 4096,
            PROT_READ|PROT_WRITE,
            MAP_ANONYMOUS|MAP_PRIVATE | (addr != NULL ? MAP_FIXED : 0),
            -1, 0);

    ret = mmap(addr, 4096,
            PROT_READ|PROT_WRITE,
            MAP_ANONYMOUS|MAP_PRIVATE | (addr != NULL ? MAP_FIXED : 0),
            -1, 0);

    if (ret == MAP_FAILED)
        err(8, "Could not mmap() at %p -- maybe I was not lucky with random picking?", addr);
    if (addr != NULL && ret != addr)
        err(99, "Wrong flags to mmap? ret = %p != %p = wanted", ret, addr);
    return 0;
}
