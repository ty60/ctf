from pwn import *


context.terminal = ['tmux', 'split-w', '-h']

binpath = './chall'
elf = ELF(binpath)
libc = ELF(
