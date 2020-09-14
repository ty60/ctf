#!/bin/bash

echo "[+] Build stage2"
nasm -f elf64 stage2.asm
gcc -nostdlib stage2.o -o stage2
objcopy stage2.o /dev/null --dump-section .text=stage2.bin

echo "[+] Build stage1"
nasm -f elf64 stage1.asm
gcc -nostdlib stage1.o -o stage1
objcopy stage1.o /dev/null --dump-section .text=stage1.bin
