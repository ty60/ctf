
#define ARRAY_SIZE(n) (n * sizeof(long))
#define ARRAY_NEW(n) (long*)alloca(ARRAY_SIZE(n + 1))

arr = ARRAY_NEW(size);

(long*)alloca(ARRAY_SIZE(size + 1));
(long*)alloca(size + 1 * sizeof(long));
