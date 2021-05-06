#!/bin/sh
# /usr/bin/qemu-system-x86_64 -kernel ../linux-4.15/arch/x86/boot/bzImage -smp 1 -hda rootfs.ext2 -boot c -m 64M -append "root=/dev/sda nokaslr rw ip=10.0.2.15:10.0.2.2:10.0.2.2 console=ttyS0" -net nic,model=ne2k_pci -net user -nographic
/usr/bin/qemu-system-x86_64 -kernel ../linux-4.15/arch/x86/boot/bzImage -smp 1 -hda rootfs.ext2 -boot c -m 64M -append "root=/dev/sda nokaslr rw ip=10.0.2.15:10.0.2.2:10.0.2.2 console=ttyS0" -net nic -net user -nographic
# /usr/bin/qemu-system-x86_64 -kernel bzImage -smp 1 -initrd ./initramfs.cpio.gz -boot c -m 64M -append "console=ttyS0" -nographic
