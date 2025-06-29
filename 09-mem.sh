#!/bin/bash 

mem_FREE=$(free -m | awk -F " " '{print $3}' | head -n2 | tail -n1)
MEM_THRESHOLD=300 # in mb 

 

while IFS= read -r LINE 
do 
    mem=$(($MEM_THRESHOLD -$mem_FREE))
    echo "free space to THRESHOLD is :"$mem
done <<< $mem_FREE