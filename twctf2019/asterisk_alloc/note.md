# Behaviour
## Malloc
```
long size;

if (ptr_m)
    return;

scanf("%ld", &size);
getchar();
ptr_m = malloc(size);
read(0, ptr_m, size);
```

## Calloc
- Same as above but use calloc

## Realloc
- Same as above but use realloc and doesn't check `ptr_r`

# Vulnerability
- UAF (double free)
