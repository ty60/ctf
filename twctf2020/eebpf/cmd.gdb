target remote localhost:1234
add-auto-load-safe-path /home/ty/work/ctf/twctf2020/eebpf/buildroot-2020.08-rc3/output/build/linux-5.4.58/scripts/gdb/vmlinux-gdb.py
symbol-file ./buildroot-2020.08-rc3/output/build/linux-5.4.58/vmlinux
directory buildroot-2020.08-rc3/output/build/linux-5.4.58/
gef

# b kernel/bpf/verifier.c:4867
# verifier switch(opcode)
# b kernel/bpf/verifier.c:4645
# b map_lookup_elem
# b array_map_lookup_elem

c
