#!/bin/bash
if [[ "$FLAG" =~ ^KosenCTF\{[-a-zA-Z0-9_!?]+\}$ ]]; then
    echo $FLAG | ./chall > test_flag.enc
else
    echo "Invalid flag"
fi
