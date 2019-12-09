#!/bin/bash


for can in `cat can.txt`; do
    res=`./easy_crack_me $can`
    if [[ $res != *"incorrect" ]]; then
        echo $can
    else
        echo "no"
    fi
done


# TWCTF{df2b4877e71bd91c02f8ef6004b584a5}
