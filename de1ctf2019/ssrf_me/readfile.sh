#!/bin/bash


if [[ $# -lt 1 ]]; then
    echo "Provide path"
    exit 1
fi

if [[ -z $2 ]]; then
    host=139.180.128.86
else
    host=$2
fi

hash=`curl -s --get --data-urlencode "param=$1read" http://$host/geneSign`
curl -s --get -b "action=readscan; sign=$hash" --data-urlencode "param=$1" http://$host/De1ta

echo
