import os
import random
import re
import shlex
import tempfile
import time

from pwnlib import adb
from pwnlib import atexit
from pwnlib import elf
from pwnlib import qemu
from pwnlib import tubes
from pwnlib.asm import _bfdname
from pwnlib.asm import make_elf
from pwnlib.asm import make_elf_from_assembly
from pwnlib.context import LocalContext
from pwnlib.context import context
from pwnlib.log import getLogger
from pwnlib.util import misc
from pwnlib.util import proc


runner = tubes.process.process

print "hoge"
args = ['gdbserver', '--multi', 'localhost:0', '/home/ctf/chall/pwn']
gdbserver = runner(args, aslr=1)
gdbserver.executable = '/home/ctf/chall/pwn'

process_created = gdbserver.recvline()

print process_created
