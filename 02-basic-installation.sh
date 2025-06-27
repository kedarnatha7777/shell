#!/bin/bash 

USER=$(id -u)
SCRIPT_NAME=$(ecgo $0 | cut -d "." -f1 )
TIME_STAMP=$(date +%F-%H-%M-%S)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log 
echo "script name is $LOG_FILE"

# colours 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $USER -eq 0 ]
then
    echo -e  "$G you are super user $N "
else 
    echo -e "$R you are not super user $N "
    exit 1 
fi 

VALIDATION_FUNCTION(){
    if [ $1 -eq 0 ]
    then 
        echo -e  "$G installation is successful... $2 $N "
    else
        echo -e "$R installation is not successfull....... $2 $N "
        exit 1 
    fi 
}

dnf install git -y &>>$LOG_FILE
VALIDATION_FUNCTION $? "installing git"

dnf install tree -y  &>>$LOG_FILE
VALIDATION_FUNCTION $? "installing tree"