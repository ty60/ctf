from pwn import *


binpath = './houseoforange'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
peda
# after menu
b *0x5555555553d5
# entering build
b *0x5555555553fd
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


def debug(func):
    def wrapper(*args, **kwargs):
        print "{}({}, {})".format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


def build_sub(length, name, price, color):
    io.recvuntil('name :')
    io.sendline(str(length))

    io.recvuntil('Name :')
    io.send((name + '\n')[:length])

    io.recvuntil('Price of Orange:')
    io.sendline(str(price))

    io.recvuntil('Color of Orange:')
    io.sendline(str(color))


@debug
def build(length, name, price, color):
    io.recvuntil('Your choice : ')
    io.sendline('1')
    build_sub(length, name, price, color)


@debug
def see():
    io.recvuntil('Your choice : ')
    io.sendline('2')
    io.recvuntil('Name of house : ')
    data = io.recvline()
    return data


@debug
def upgrade(length, name, price, color):
    io.recvuntil('Your choice : ')
    io.sendline('3')
    build_sub(length, name, price, color)


io.interactive()
