#!/bin/bash


FILES="./patches/*"
for p in $FILES; do
    patch -Rn < $p
done
