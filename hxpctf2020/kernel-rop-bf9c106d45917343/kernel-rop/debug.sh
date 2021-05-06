#!/bin/sh

make

cp solve initramfs
cd initramfs
find . -print0 | cpio --null -o --format=newc | gzip -9 > ../initramfs.cpio.gz
cd ../

qemu-system-x86_64 -m 128M -cpu kvm64,+smep,+smap -kernel ./vmlinuz -initrd initramfs.cpio.gz -hdb flag.txt -snapshot -nographic -monitor /dev/null -no-reboot -append "console=ttyS0 nokaslr kpti=1 quiet panic=1" -s -S -monitor telnet::1235,server,nowait
# qemu-system-x86_64 -m 128M --kernel ./vmlinuz -initrd initramfs.cpio.gz -hdb flag.txt -snapshot -nographic -monitor /dev/null -no-reboot -append "console=ttyS0 nokaslr kpti=1 quiet panic=1" -s -S
