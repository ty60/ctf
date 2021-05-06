#!/bin/bash

if ! command -v ROPgadget &> /dev/null; then
    echo "Install ROPgadget"
    exit
fi

if [[ $# -lt 1 ]]; then
    echo "Usage: ./search_kernel_gadget.sh /path/to/vmlinux"
    exit
fi

vmlinux_path=$1
if [[ ! -f ./rop.txt ]]; then
    ROPgadget --binary $vmlinux_path > rop.txt
fi

echo "[+] stack pivot gadget (xchg)"
grep -P ": xchg eax, esp ; ret" rop.txt
echo "[+] stack pivot gadget (mov)"
grep -P ": mov [er]sp, 0x[0-9a-f]* ; .* ; ret$" rop.txt

echo "[+] pop rdi gadget"
grep -P ": pop rdi ; ret" rop.txt

while read -r call_gadget; do
    echo "[+] mov rdi, rax ; call * gadget"
    echo $call_gadget
    echo "[+] corresponding pop * gadget"
    call_reg=`echo $call_gadget | cut -d " " -f 8`
    grep -P ": pop $call_reg ; .* ret$" rop.txt
done < <(grep  -P ": mov rdi, rax ; call r.*$" rop.txt)

echo "[+] swapgs gadget"
grep -P ": swapgs" rop.txt

echo "[+] iretq"
objdump -d -M intel -j .text $vmlinux_path | grep iretq
echo "[+] sysret"
objdump -d -M intel -j .text $vmlinux_path | grep sysret
