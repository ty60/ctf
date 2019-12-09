//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
// Copyright (c) 2019 Retargetable Decompiler <info@retdec.com>
//

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// ------------------------ Structures ------------------------

struct _IO_FILE {
    int32_t e0;
};

// ------------------- Function Prototypes --------------------

int64_t __do_global_dtors_aux(void);
int64_t __libc_csu_fini(void);
int64_t __libc_csu_init(int64_t a1, int64_t a2, int64_t a3);
int64_t _fini(void);
int64_t _init(void);
int64_t _start(int64_t a1, int64_t a2, int64_t a3, int64_t a4);
int64_t call_calloc(void);
int64_t call_free(void);
int64_t call_malloc(void);
int64_t call_realloc(void);
int64_t deregister_tm_clones(void);
int64_t frame_dummy(void);
void function_840(int64_t * ptr);
void function_850(int32_t status);
int32_t function_860(char * s);
void function_870(void);
void function_880(struct _IO_FILE * stream, char * buf);
int32_t function_890(char * format, ...);
int32_t function_8a0(int32_t fd, int64_t * buf, int32_t nbytes);
int64_t * function_8b0(int32_t nmemb, int32_t size);
int32_t function_8c0(void);
int64_t * function_8d0(int32_t size);
int64_t * function_8e0(int64_t * ptr, int32_t size);
int32_t function_8f0(char * format, ...);
void function_900(int64_t * d);
int64_t initialize(void);
int64_t print_menu(void);
int64_t register_tm_clones(void);

// --------------------- Global Variables ---------------------

int64_t g1 = 2576;
int64_t g2 = 2512;
struct _IO_FILE * g3 = NULL;
struct _IO_FILE * g4 = NULL;
char g5 = 0;
int64_t g6 = 0;
int64_t g7 = 0;
int64_t g8 = 0;
int64_t g9 = -0x15700000132;
int32_t g10;

// ------------------------ Functions -------------------------

// Address range: 0x818 - 0x82f
int64_t _init(void) {
    // 0x818
    int64_t result;
    if (*(int64_t *)0x201fe8 != 0) {
        // 0x828
        __gmon_start__();
        result = &g10;
    } else {
        result = 0;
    }
    // 0x82a
    return result;
}

// Address range: 0x840 - 0x846
void function_840(int64_t * ptr) {
    // 0x840
    free(ptr);
}

// Address range: 0x850 - 0x856
void function_850(int32_t status) {
    // 0x850
    _exit(status);
}

// Address range: 0x860 - 0x866
int32_t function_860(char * s) {
    // 0x860
    return puts(s);
}

// Address range: 0x870 - 0x876
void function_870(void) {
    // 0x870
    __stack_chk_fail();
}

// Address range: 0x880 - 0x886
void function_880(struct _IO_FILE * stream, char * buf) {
    // 0x880
    setbuf(stream, buf);
}

// Address range: 0x890 - 0x896
int32_t function_890(char * format, ...) {
    // 0x890
    return printf(format);
}

// Address range: 0x8a0 - 0x8a6
int32_t function_8a0(int32_t fd, int64_t * buf, int32_t nbytes) {
    // 0x8a0
    return read(fd, buf, nbytes);
}

// Address range: 0x8b0 - 0x8b6
int64_t * function_8b0(int32_t nmemb, int32_t size) {
    // 0x8b0
    return calloc(nmemb, size);
}

// Address range: 0x8c0 - 0x8c6
int32_t function_8c0(void) {
    // 0x8c0
    return getchar();
}

// Address range: 0x8d0 - 0x8d6
int64_t * function_8d0(int32_t size) {
    // 0x8d0
    return malloc(size);
}

// Address range: 0x8e0 - 0x8e6
int64_t * function_8e0(int64_t * ptr, int32_t size) {
    // 0x8e0
    return realloc(ptr, size);
}

// Address range: 0x8f0 - 0x8f6
int32_t function_8f0(char * format, ...) {
    // 0x8f0
    return scanf(format);
}

// Address range: 0x900 - 0x906
void function_900(int64_t * d) {
    // 0x900
    __cxa_finalize(d);
}

// Address range: 0x910 - 0x93b
int64_t _start(int64_t a1, int64_t a2, int64_t a3, int64_t a4) {
    // 0x910
    int64_t v1;
    __libc_start_main(3414, (int32_t)a4, (char **)&v1, (void (*)())3600, (void (*)())3712, (void (*)())a3);
    __asm_hlt();
    // UNREACHABLE
}

// Address range: 0x940 - 0x972
int64_t deregister_tm_clones(void) {
    // 0x940
    return (int64_t)&g3;
}

// Address range: 0x980 - 0x9c2
int64_t register_tm_clones(void) {
    // 0x9c0
    return 0;
}

// Address range: 0x9d0 - 0xa0a
int64_t __do_global_dtors_aux(void) {
    // 0x9d0
    if (g5 != 0) {
        // 0xa08
        int64_t result; // rax
        return result;
    }
    if (*(int64_t *)0x201ff8 != 0) {
        // 0x9e7
        __cxa_finalize((int64_t *)*(int64_t *)0x202008);
    }
    // 0x9f3
    g5 = 1;
    return deregister_tm_clones();
}

// Address range: 0xa10 - 0xa1a
int64_t frame_dummy(void) {
    // 0xa10
    return register_tm_clones();
}

// Address range: 0xa1a - 0xa49
int64_t initialize(void) {
    // 0xa1a
    setbuf(g4, NULL);
    setbuf(g3, NULL);
    return &g10;
}

// Address range: 0xa49 - 0xaa4
int64_t print_menu(void) {
    // 0xa49
    puts("=================================");
    puts("1. malloc");
    puts("2. calloc");
    puts("3. realloc");
    puts("4. free");
    puts("5. exit");
    return puts("=================================");
}

// Address range: 0xaa4 - 0xb4d
int64_t call_malloc(void) {
    int64_t v1 = __readfsqword(40);
    if (g7 == 0) {
        // 0xac7
        printf("Size: ");
        int64_t size; // bp-24
        scanf("%ld", &size);
        getchar();
        printf("Data: ");
        int64_t * mem = malloc((int32_t)size);
        g7 = (int64_t)mem;
        read(0, mem, (int32_t)size);
    }
    // 0xb37
    int64_t result;
    if (__readfsqword(40) != v1) {
        // 0xb46
        __stack_chk_fail();
        result = &g10;
    } else {
        result = 0;
    }
    // 0xb4b
    return result;
}

// Address range: 0xb4d - 0xbfb
int64_t call_calloc(void) {
    int64_t v1 = __readfsqword(40);
    if (g8 == 0) {
        // 0xb70
        printf("Size: ");
        int64_t size; // bp-24
        scanf("%ld", &size);
        getchar();
        g8 = (int64_t)calloc(1, (int32_t)size);
        printf("Data: ");
        read(0, (int64_t *)g8, (int32_t)size);
    }
    // 0xbe5
    int64_t result;
    if (__readfsqword(40) != v1) {
        // 0xbf4
        __stack_chk_fail();
        result = &g10;
    } else {
        result = 0;
    }
    // 0xbf9
    return result;
}

// Address range: 0xbfb - 0xca3
int64_t call_realloc(void) {
    int64_t v1 = __readfsqword(40);
    printf("Size: ");
    int64_t nbyte; // bp-24
    scanf("%ld", &nbyte);
    getchar();
    g6 = (int64_t)realloc((int64_t *)g6, (int32_t)nbyte);
    printf("Data: ");
    read(0, (int64_t *)g6, (int32_t)nbyte);
    int64_t result;
    if (__readfsqword(40) != v1) {
        // 0xc9c
        __stack_chk_fail();
        result = &g10;
    } else {
        result = 0;
    }
    // 0xca1
    return result;
}

// Address range: 0xca3 - 0xd56
int64_t call_free(void) {
    int64_t v1 = __readfsqword(40);
    printf("Which: ");
    char v2; // bp-17
    scanf("%c", &v2);
    getchar();
    if (v2 != 109) {
        if (v2 != 99) {
            if (v2 != 114) {
                // 0xd33
                puts("Invalid choice");
            } else {
                // 0xd22
                free((int64_t *)g6);
            }
        } else {
            // 0xd09
            free((int64_t *)g8);
        }
    } else {
        // 0xcf0
        free((int64_t *)g7);
    }
    // 0xd3f
    int64_t result;
    if (__readfsqword(40) != v1) {
        // 0xd4f
        __stack_chk_fail();
        result = &g10;
    } else {
        result = 0;
    }
    // 0xd54
    return result;
}

// Address range: 0xd56 - 0xe07
int main(int argc, char ** argv) {
    // 0xd56
    __readfsqword(40);
    initialize();
    print_menu();
    printf("Your choice: ");
    int32_t v1; // bp-20
    scanf("%d", &v1);
    getchar();
    while (v1 >= 6) {
        // 0xdf6
        puts("Invalid choice");
        print_menu();
        printf("Your choice: ");
        scanf("%d", &v1);
        getchar();
    }
    uint32_t v2 = *(int32_t *)(4 * (int64_t)v1 + (int64_t)&g9);
    return (int64_t)v2 + (int64_t)&g9;
}

// Address range: 0xe10 - 0xe75
int64_t __libc_csu_init(int64_t a1, int64_t a2, int64_t a3) {
    int64_t result = _init();
    if ((int64_t)&g2 - (int64_t)&g1 >> 3 != 0) {
        int64_t v1 = 0; // 0xe5d2
        while (v1 != ((int64_t)&g2 - (int64_t)&g1 >> 3) - 1) {
            // 0xe50
            v1++;
        }
    }
    // 0xe66
    return result;
}

// Address range: 0xe80 - 0xe82
int64_t __libc_csu_fini(void) {
    // 0xe80
    int64_t result; // rax
    return result;
}

// Address range: 0xe84 - 0xe8d
int64_t _fini(void) {
    // 0xe84
    int64_t result; // rax
    return result;
}

// --------------- Dynamically Linked Functions ---------------

// void __cxa_finalize(void * d);
// void __gmon_start__(void);
// int __libc_start_main(int *(main)(int, char **, char **), int argc, char ** ubp_av, void(* init)(void), void(* fini)(void), void(* rtld_fini)(void), void(* stack_end));
// void __stack_chk_fail(void);
// void _exit(int status);
// void * calloc(size_t nmemb, size_t size);
// void free(void * ptr);
// int getchar(void);
// void * malloc(size_t size);
// int printf(const char * restrict format, ...);
// int puts(const char * s);
// ssize_t read(int fd, void * buf, size_t nbytes);
// void * realloc(void * ptr, size_t size);
// int scanf(const char * restrict format, ...);
// void setbuf(FILE * restrict stream, char * restrict buf);

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (7.4.0)
// Detected functions: 29
// Decompilation date: 2019-09-02 18:05:01
