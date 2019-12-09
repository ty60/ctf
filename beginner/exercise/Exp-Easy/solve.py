#!/usr/bin/python
# -*- coding: utf-8 -*-
import struct, socket, sys, telnetlib, subprocess, time

#p(0xdeadbeef) --> pack to 4byte little endian '\xef\xbe\xad\xde'
def p(a): return struct.pack("<I",a)

proc = subprocess.Popen(['./exp-easy.elf'],executable='./exp-easy.elf',stdin=subprocess.PIPE)

#Your Input Here
buf = p(0x12345678)
buf = "A" * 2048

open('buf','wb').write(buf)
proc.stdin.write(buf+'\n')
