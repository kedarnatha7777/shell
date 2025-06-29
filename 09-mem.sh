#!/bin/bash 

mem_FREE=$(free -m | awk -F " " '{print $3}')
MEM_THRESHOLD=300 # in mb 

if [ $mem_FREE -gt $MEM_THRESHOLD ]
then
    echo "more space occupied $mem_FREE"
else 
    echo " we have some space $mem_FREE - $MEM_THRESHOLD"
fi 

