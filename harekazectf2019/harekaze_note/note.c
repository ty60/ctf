//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
// Copyright (c) 2019 Retargetable Decompiler <info@retdec.com>
//

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

// ------------------- Function Prototypes --------------------

int64_t function_1370(void);
int64_t function_13c1(void);
int64_t function_14bc(void);
int64_t function_15ba(void);
int64_t function_1640(void);
int64_t function_16fc(void);

// ------------------------ Functions -------------------------

// Address range: 0x16fc - 0x176f
int64_t function_16fc(void) {
    while (true) {
        int32_t v1 = function_1370(); // 0x1714
        if (v1 == 2) {
            // 0x173d
            function_14bc();
            // continue -> 0x170a
            continue;
        }
        if (v1 > 2) {
            switch (v1) {
                case 3: {
                    // 0x1749
                    function_15ba();
                    // continue -> 0x170a
                    continue;
                }
                case 4: {
                    // 0x1755
                    function_1640();
                    // continue -> 0x170a
                    continue;
                }
            }
            // 0x1761
            puts("Invalid choice");
            // continue -> 0x170a
            continue;
        }
        if (v1 != 1) {
            // 0x1761
            puts("Invalid choice");
            // continue -> 0x170a
            continue;
        }
        // 0x1731
        function_13c1();
    }
}

// --------------- Dynamically Linked Functions ---------------

// int puts(const char * s);

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (8.3.0)
// Detected functions: 1
// Decompilation date: 2019-08-01 16:34:00
