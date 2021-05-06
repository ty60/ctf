# gef
target remote localhost:1234

# ffffffffc0000190 t hackme_release       [hackme]
# ffffffffc0000000 t hackme_write [hackme]
# ffffffffc00001a0 t hackme_open  [hackme]
# ffffffffc00000d0 t hackme_read  [hackme]
# ffffffffc0002000 d hackme_misc  [hackme]
# ffffffffc00000b7 t hackme_exit  [hackme]
# ffffffffc00010a0 r hackme_fops  [hackme]
# ffffffffc0001076 r .LC1 [hackme]
# ffffffffc00011a0 r _note_7      [hackme]
# ffffffffc0002080 d __this_module        [hackme]
# ffffffffc00000b7 t cleanup_module       [hackme]
# ffffffffc0002440 b hackme_buf   [hackme]

# b *0xffffffff81006370
# b *0xffffffff8120011a
#
# b *0xffffffff81004d11
b *0xffffffff81015a80
c
