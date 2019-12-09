from pwn import *




binpath = "./popping_caps"
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)
libc = elf.libc

gdbscript = 
"""
gef
"""
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


addr_system = int(io.readline().split()[-1], 16)
addr_libc = addr_system - libc.symbols["system"]
print "addr_libc = 0x{:x}".format(addr_libc)

