#!/bin/bash

if [ -z "$1" ]
  then
    echo "Enter the first 3 octets of the /24 subnet."
    echo "Example: pingsweep.sh 192.168.1"
        exit
fi
for ip in $(seq 1 254);do
ping -c 1 $1.$ip |grep "bytes from" |cut -d" " -f 4|cut -d":" -f1 &
done
