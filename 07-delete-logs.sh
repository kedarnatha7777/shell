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


find . -name "*.log" -mtime +13
echo ""
