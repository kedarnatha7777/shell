#!/bin/bash 

mem_FREE=$(free -m | awk -F " " '{print $3}')
MEM_THRESHOLD=300 # in mb 

 

while IFS= read -r LINE 
do 
echo $LINE 

done <<< $mem_FREE