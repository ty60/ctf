#!/bin/sh

cd ..
. ./config.sh
cd toolchain

rm -fR $binutils
rm -fR $gcc
rm -fR $newlib
rm -fR $gdb

rm -fR $gmp
rm -fR $mpfr
rm -fR $mpc
