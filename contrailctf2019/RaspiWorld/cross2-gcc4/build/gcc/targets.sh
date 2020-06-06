#!/bin/sh

# c architectures. (without newlib)
targets="rl78-elf"
targets="$targets hppa-linux pdp11-aout xstormy16-elf xtensa-elf"
targets="$targets alpha-elf"

# c,c++ architectures. (with newlib)
targets_cpp="arm-elf i386-elf mips-elf powerpc-elf sh-elf"
targets_cpp="$targets_cpp bfin-elf cr16-elf m32c-elf microblaze-elf moxie-elf"
targets_cpp="$targets_cpp rx-elf spu-elf tic6x-elf"
targets_cpp="$targets_cpp avr-elf cris-elf frv-elf m32r-elf m68k-elf"
targets_cpp="$targets_cpp mips64-elf mn10300-elf sh64-elf sparc-elf"
targets_cpp="$targets_cpp strongarm-elf v850-elf xscale-elf"

# only c architectures. (with newlib)
targets_c="h8300-elf"

# available, but cannot build sample program.
##targets="$targets fr30-elf mcore-elf"

# unavailable on new gcc. (but, available on gcc-3.4.6)
##targets="$targets arc-elf i960-elf m6811-elf mmix-elf powerpc64-linux"
##targets="$targets s390-linux x86_64-linux"
##targets="$targets ia64-elf vax-netbsdelf"

# gcc cross build failed.
##targets="$targets alpha-dec-osf alpha-linux alpha-vms c4x-coff d10v-elf"
##targets="$targets dlx-elf hppa-elf i370-elf i370-linux i960-elf ip2k-elf"
##targets="$targets iq2000-elf lm32-elf mn10200-elf msp430-elf mt-elf"
##targets="$targets openrisc-elf or32-elf pdp11-dec-bsd pj-elf pjl-elf"
##targets="$targets powerpc64-elf rs6000-aix tic4x-coff tic54x-coff vax-linux"
##targets="$targets x86_64-elf x86_64-w64-mingw32 z80-coff z8k-coff"

# target dependent options.
opt_arm_elf="--enable-obsolete"
opt_strongarm_elf="--enable-obsolete"
opt_xscale_elf="--enable-obsolete"
#opt_i960_elf="--enable-obsolete"
#opt_vax_linux="--enable-obsolete"
