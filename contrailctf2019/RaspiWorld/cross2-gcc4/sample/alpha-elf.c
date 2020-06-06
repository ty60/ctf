void null()
{
  return;
}

int return_zero()
{
  return 0;
}

int return_one()
{
  return 1;
}

int return_int_size()
{
  return sizeof(int);
}

int return_pointer_size()
{
  return sizeof(int *);
}

int return_short_size()
{
  return sizeof(short);
}

int return_long_size()
{
  return sizeof(long);
}

short return_short()
{
  return 0x7788;
}

long return_long()
{
  return 0x778899aa;
}

short return_short_upper()
{
  return 0xffee;
}

long return_long_upper()
{
  return 0xffeeddcc;
}

int return_arg1(int a)
{
  return a;
}

int return_arg2(int a, int b)
{
  return b;
}

int add(int a, int b)
{
  return a + b;
}

int add3(int a, int b, int c)
{
  return a + b + c;
}

int add_two(int a)
{
  return a + 2;
}

int inc(int a)
{
  return ++a;
}

int or(int a, int b)
{
  return a | b;
}

int or_one(int a)
{
  return a | 1;
}

int load(volatile int *p)
{
  return *p;
}

void store(volatile int *p)
{
  *p = 0xff;
}

long load_long(volatile long *p)
{
  return *p;
}

void store_long(volatile long *p)
{
  *p = 0x11223344;
}

struct structure {
  int a;
  int b;
  int c;
};

int member(struct structure *p)
{
  p->b = 1;
  return p->c;
}

int static_value = 10;
long static_long = 0x12345678;

int *get_static_value_addr()
{
  return &static_value;
}

int get_static_value()
{
  return static_value;
}

void set_static_value(int a)
{
  static_value = a;
}

#define UNUSED __attribute__((unused)) 

void set_stack()
{
  UNUSED volatile int a = 0xfe;
  UNUSED volatile int b = 0xff;
}

int use_stack()
{
  volatile int a = 0xfe;
  volatile int b = 0xff;
  return a + b;
}

void call_self()
{
  call_self();
}

int call_simple(int a)
{
  return return_arg1(a);
}

int call_complex1()
{
  return return_arg1(0xfe) + 1;
}

int call_complex2(int a, int b)
{
  static_value = return_arg1(b);
  return b;
}

void call_pointer(int (*f)(void))
{
  f();
}

int condition(int a, int b)
{
  if (a == b)
    b = 1;
  return b + 1;
}

int loop(int n)
{
  int i, sum = 0;
  for (i = 0; i < n; i++)
    sum += i;
  return sum;
}

int many_args(int a0, int a1, int a2, int a3,
              int a4, int a5, int a6, int a7)
{
  return a0 + a3 + a5 + a7;
}

int call_many_args()
{
  return many_args(0, 1, 2, 3, 4, 5, 6, 7);
}

#ifndef NO_DIRECT
void direct()
{
  asm volatile ("nop");
  return;
}
#endif

#ifndef NO_BINARY
void binary()
{
  asm volatile (".align 4");
  asm volatile (".int 0x0");
  return;
}
#endif

int main()
{
  return 0;
}
