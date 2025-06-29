#!/bin/bash

disc_utilization=$(df -hT | grep xfs )
disc_threshold=5

while IFS= read -s LINE 
do 
    USAGE=$LINE |  awk -F " "  '{print $6F}' | cut -d "%" -f
    FOLDER=$$LINE |  awk -F " "  '{print $NF}'
    if [ $USAGE -gt $disc_threshold ]
    then    
        echo "$FOLDER is more the $disc_utilization , current usages is $USAGE"
dond <<< $disc_utilization


