#!/bin/sh

# major architectures.
targets="arm-elf h8300-elf i386-elf mips-elf powerpc-elf sh-elf"

# available on new gcc.
targets="$targets bfin-elf cr16-elf m32c-elf microblaze-elf moxie-elf"
targets="$targets rl78-elf rx-elf spu-elf tic6x-elf"

# other architectures.
targets="$targets avr-elf cris-elf frv-elf hppa-linux m32r-elf m68k-elf"
targets="$targets mips64-elf mn10300-elf pdp11-aout sh64-elf sparc-elf"
targets="$targets strongarm-elf v850-elf xscale-elf xstormy16-elf xtensa-elf"

# need patches to build cross binutils/gcc.
targets="$targets alpha-elf"

# available, but cannot build sample program.
##targets="$targets fr30-elf mcore-elf"

# unavailable on new gcc. (but, available on gcc-3.4.6)
##targets="$targets arc-elf i960-elf m6811-elf mmix-elf powerpc64-linux"
##targets="$targets s390-linux x86_64-linux"
##targets="$targets ia64-elf vax-netbsdelf"

# succeeded, but failed to build gcc.
##targets="$targets alpha-dec-osf alpha-linux alpha-vms c4x-coff d10v-elf"
##targets="$targets dlx-elf hppa-elf i370-elf i370-linux i960-elf ip2k-elf"
##targets="$targets iq2000-elf lm32-elf mn10200-elf msp430-elf mt-elf"
##targets="$targets openrisc-elf or32-elf pdp11-dec-bsd pj-elf pjl-elf"
##targets="$targets powerpc64-elf rs6000-aix tic4x-coff tic54x-coff vax-linux"
##targets="$targets x86_64-elf x86_64-w64-mingw32 z80-coff z8k-coff"

# binutils cross build failed.
##targets="$targets a29k-elf am29k-elf gmicro-elf h8500-elf i370-ibm-opened"
##targets="$targets i860-elf i960-coff i960-intel i960-unknown-coff m88k-coff"
##targets="$targets m88k-elf nios-elf nios2-elf or32-coff pdp11-elf"
##targets="$targets rs6000-elf s390-elf tic80-elf tron-elf v810-elf vax-elf"
##targets="$targets vax-vms we32k-elf z80-elf z8k-elf"
