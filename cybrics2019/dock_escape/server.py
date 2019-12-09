#!/usr/local/bin/python
import socket
import sys
import signal
import struct

def read_exact(sock, elen):
    data = ''
    while len(data) < elen:
        data += sock.recv(elen-len(data))
    return data

def handle(s):
    while True:
        comm = s.recv(1)
        if comm not in "SR":
            break
        if comm == "R":  # retreive
            data = s.recv(4)
            if len(data) != 4:
                break
            fname_len = struct.unpack("<L", data)[0]
            fname = read_exact(s, fname_len)
            data = open(fname, "rb").read()
            s.send(struct.pack("<L", len(data)))
            s.send(data)
        else:  # store
            data = s.recv(4)
            if len(data) != 4:
                break
            fname_len = struct.unpack("<L", data)[0]
            fname = read_exact(s, fname_len)
            cont_len = s.recv(4)
            if len(cont_len) != 4:
                break
            cont_len = struct.unpack("<L", cont_len)[0]
            if cont_len > 4096:
                return
            cont = read_exact(s, cont_len)
            try:
                f = open(fname, "wb")
                f.write(cont)
                f.close()
            except:
                return
            s.send("OK?")

s = socket.socket()
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind(("0.0.0.0", 12345))
def handler(signum, frame):
    #print('Signal handler called with signal', signum)
    exit(10)
    #raise OSError("Couldn't open device!")

signal.signal(signal.SIGALRM, handler)
signal.alarm(30)
s.listen(5)
while True:
    client, _ = s.accept()
    try:
        handle(client)
    except:
        pass
    client.close()

