#!/bin/bash 

SOURCE_DIR=/tmp/app-log/

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIR ]
then
    echo -e "dir existed $SOURCE_DIR"
else 
    echo -e "dir not  existed "
    exit 1 
fi 


FILES=$(find . -name "*.log" -mtime +14)

echo "files to delete $FILES"

while IFS= read -r LINE
do 
    echo "files to delete" $FILES 
    rm -rf $FILES 

done <<< $FILES



