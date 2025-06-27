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


my_array=("rrr" "tillu" "gillu ")

echo "1st value is ${my_array[0]}"
echo "2st value is ${my_array[1]}"
echo "3st value is ${my_array[2]}"

echo "all values are  ${my_array[@]}"

echo "all packages are $@"

for i in $@ 
do 
    dnf list installed $i &>>$LOG_FILE 
     if [ $? -eq 0 ]
    then 
        echo -e  "$G already installed $1   $N "
    else
        echo -e "$R not installed...... need to install  $i  $N "
        dnf install $i -y &>>$LOG_FILE  
    fi 

done