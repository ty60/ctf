#!/bin/sh

cd setup
./clean.sh $*
cd ..

cd binutils
./clean.sh $*
cd ..

cd gcc
./clean.sh $*
cd ..

cd gdb
./clean.sh $*
cd ..
