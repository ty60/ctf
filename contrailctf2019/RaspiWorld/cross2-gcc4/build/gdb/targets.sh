#!/bin/sh

# major architectures.
targets="arm-elf h8300-elf mips-elf powerpc-elf sh-elf"

# available on new gcc.
targets="$targets bfin-elf m32c-elf microblaze-elf rl78-elf rx-elf"

# other architectures.
targets="$targets avr-elf cris-elf frv-elf m32r-elf"
targets="$targets mips16-elf mn10300-elf sh64-elf sparc-elf v850-elf"

# simulator only. (not build gdb)
targets="$targets cr16-elf"

# available, but unavailable on new gcc.
##targets="$targets m6811-elf"

# available, but cannot build sample program.
##targets_simonly="mcore-elf"

# gdb cross build failed.
##targets="$targets moxie-elf"
