#include "syscall.h"

long data_value = 0xabadface;
int bss_value;

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

void exit(int status)
{
  __exit(status);
}

int write1(int fd, unsigned char c)
{
  return __write(fd, &c, 1);
}

int putchar(int fd, int c)
{
  write1(fd, c);
  return c;
}

int puts(int fd, char *str)
{
  for (; *str; str++)
    putchar(fd, *str);
  return 0;
}

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

int putxval(int fd, unsigned long value, int column)
{
  char buf[17];
  char *p;

  p = buf + sizeof(buf) - 1;
  *(p--) = '\0';

  if (!value && !column)
    column++;

  while (value || column) {
    *(p--) = "0123456789abcdef"[value & 0xf];
    value >>= 4;
    if (column) column--;
  }

  puts(fd, p + 1);

  return 0;
}

int main()
{
  int fd = 1;
  puts(fd, "Hello World! ");
  putxval(fd, data_value, 0);
  puts(fd, " This architecture is " ARCH "\n");
  exit(0);
  return 0;
}
