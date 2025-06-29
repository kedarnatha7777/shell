#!/bin/bash

disc_utilization=$(df -hT | grep xfs )
disc_threshold=5

while  IFS= read -r LINE
do 
    USAGE=$(echo $LINE |  awk -F " " '{print $6}' | cut -d "%" -f1)
    FOLDER=$(echo $LINE |  awk -F " "  '{print $NF}')
    if [ $USAGE -ge $disc_threshold ]
    then    
        echo "$FOLDER is more the $disc_utilization , current usages is $USAGE"
    fi 

    # lines=$LINE
    # echo $lines
    

done <<< $disc_utilization


