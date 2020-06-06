#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>

#include "syscall.h"

long data_value = 0xabadface;
int bss_value;

#ifdef USE_ORIGINAL_ERRNO
int errno;
#endif

#ifdef USE_SYSCALL_WRAPPER
void __exit(int status)
{
  __r_exit(0, status);
}
int __read(int fd, void *buffer, int size)
{
  return __r_read(0, fd, buffer, size);
}
int __write(int fd, const void *buffer, int size)
{
  return __r_write(0, fd, buffer, size);
}
int __open(const char *path, int flags, int mode)
{
  return __r_open(0, path, flags, mode);
}
int __close(int fd)
{
  return __r_close(0, fd);
}
#endif

void _exit(int status)
{
  __exit(status);
}

int read(int fd, void *buffer, int size)
{
  return __read(fd, buffer, size);
}
int write(int fd, const void *buffer, int size)
{
  return __write(fd, buffer, size);
}
int open(const char *path, int flags, int mode)
{
  return __open(path, flags, mode);
}
int close(int fd)
{
  return __close(fd);
}

/* Dummy functions */

int fstat(int fd, struct stat *sb)
{
  memset(sb, 0, sizeof(*sb));
  return 0;
}

int lseek(int fd, int offset, int whence)
{
  return offset;
}

extern char _heap;
char *sbrk_top = &_heap;

void *sbrk(int incr)
{
  void *old_top;
  old_top = sbrk_top;
  sbrk_top += incr;
  return old_top;
}

int isatty(int fd)
{
  return 1;
}

#ifdef USE_UNDERLINE_WRAPPER
int _read(int fd, void *buffer, int size)
{
  return read(fd, buffer, size);
}
int _write(int fd, const void *buffer, int size)
{
  return write(fd, buffer, size);
}
int _open(const char *path, int flags, int mode)
{
  return open(path, flags, mode);
}
int _close(int fd)
{
  return close(fd);
}
int _fstat(int fd, struct stat *sb)
{
  return fstat(fd, sb);
}
int _lseek(int fd, int offset, int whence)
{
  return lseek(fd, offset, whence);
}
void *_sbrk(int incr)
{
  return sbrk(incr);
}
int _isatty(int fd)
{
  return isatty(fd);
}
#endif

#ifdef RSHIFT
/*
 * For architecture not to be able to use shift instruction for well,
 * execute shift operation without shift instruction.
 */
unsigned long rshift1(unsigned long value)
{
  unsigned long mask, bit = 1;
  unsigned long ret = 0;
  int i;

  for (i = 0; i < sizeof(unsigned long) * 8 - 1; i++) {
    mask = bit + bit; /* Use addition for no using shift and multiplication */
    if (value & mask)
      ret |= bit;
    bit = bit + bit;
  }

  return ret;
}

unsigned long RSHIFT(unsigned long value)
{
  int num = 4;
  for (; num > 0; num--)
    value = rshift1(value);
  return value;
}
#endif

extern char _bss_start;
extern char _ebss;

static int _init()
{
  memset(&_bss_start, 0, &_ebss - &_bss_start);
  return 0;
}

int main();

int _startmain()
{
  _init();
  exit(main());
  return 0;
}

int main()
{
  printf("Hello World! %08lx This architecture is %s\n", data_value, ARCH);
  exit(0);
}
