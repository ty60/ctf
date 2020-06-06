#!/bin/sh

tool="gcc-lib"
operation="clean"

no_exit=true
cd ..
. ./config.sh
cd setup

rm -fR gmp mpfr mpc
