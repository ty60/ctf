#!/bin/sh
# /usr/bin/qemu-system-x86_64 -kernel ./linux-d8ec26d7f8287f5788a494f56e8814210f0e64be/arch/x86/boot/bzImage -smp 1 -hda hogefs.ext2 -boot c -m 64M -append "root=/dev/sda noakaslr rw ip=10.0.2.15:10.0.2.2:10.0.2.2 console=tty1 console=ttyAMA0" -net nic,model=ne2k_pci -net user -nographic
/usr/bin/qemu-system-x86_64 -kernel bzImage -smp 1 -hda hogefs.ext2 -boot c -m 64M -append "root=/dev/sda nokaslr rw ip=10.0.2.15:10.0.2.2:10.0.2.2 console=ttyS0 console=ttyAMA0" -net nic,model=ne2k_pci -net user
# /usr/bin/qemu-system-x86_64 -kernel ./bzImage -smp 1 -hda hogefs.ext2 -boot c -m 64M -append "root=/dev/sda nokaslr rwconsole=tty1 console=ttyAMA0" -nographic
