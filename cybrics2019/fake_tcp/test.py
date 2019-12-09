import struct
import time


from scapy.all import *


def switch_endian_s(x):
    return struct.unpack("<H", struct.pack(">H", x))[0]


def switch_endian_i(x):
    return struct.unpack("<I", struct.pack(">I", x))[0]


def fake_handshake():
    ip = IP(src="10.74.93.74", dst="209.250.241.50")

    syn = TCP(sport=1500,
              dport=switch_endian_s(51966),
              flags='S',
              seq=0)

    sr = TCP(sport=1500,
              dport=switch_endian_s(51966),
              flags='SR',
              seq=0)

    ack = TCP(sport=1500,
              dport=switch_endian_s(51966),
              flags='A',
              seq=switch_endian_i(1),
              ack=switch_endian_i(1)
              )

    send(ip/ack)
    time.sleep(1)

    send(ip/syn)
    time.sleep(1)

    send(ip/ack)
    time.sleep(1)

    send(ip/ack)
    time.sleep(1)



if __name__ == '__main__':
    fake_handshake()
