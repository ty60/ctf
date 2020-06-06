#!/bin/sh

cd setup
./build-gmp.sh
./install-gmp.sh
./build-mpfr.sh
./install-mpfr.sh
./build-mpc.sh
./install-mpc.sh
cd ..
