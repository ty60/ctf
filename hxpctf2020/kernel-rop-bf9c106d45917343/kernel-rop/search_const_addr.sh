#!/bin/bash


# find data which is not affected by fgkaslr


qemu-system-x86_64 -m 128M -cpu kvm64,+smep,+smap -kernel ./vmlinuz -initrd initramfs.cpio.gz -hdb flag.txt -snapshot -nographic -monitor /dev/null -no-reboot -append "console=ttyS0 nokaslr kpti=1 quiet panic=1" | while read line
do
    echo $line
done
