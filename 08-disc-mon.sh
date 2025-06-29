#!/bin/bash

disc_utilization=$(df -hT | grep xfs )
disc_threshold=5

while  IFS= read -r LINE
do 
    USAGE=$(echo $LINE |  awk -F " "  '{print $6F}' | cut -d "%" -f)
    FOLDER=$(echo $LINE |  awk -F " "  '{print $6F}' )
    if [ $USAGE -gt $disc_threshold ]
    then    
        echo "$FOLDER is more the $disc_utilization , current usages is $USAGE"
    fi 

    # lines=$LINE
    # echo $lines
    

done <<< $disc_utilization


