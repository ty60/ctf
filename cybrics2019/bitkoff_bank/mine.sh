#!/bin/bash


while :
do
    echo "hoge"
    curl -s -b 'name=aapassword; password=aapassword' http://45.77.201.191/index.php > /dev/null
done
