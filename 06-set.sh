#!/bin/bash 

set -e -x  

Failure(){
    echo "line number is "$1
    echo "command is "$2
}

trap 'Failure ${LINENO} "$BASH_COMMAND"' ERR 

USER=$(id -u)

if [ $USER -eq 0 ]
then
    echo -e  "$G you are super user $N "
else 
    echo -e "$R you are not super user $N "
    exit 1 
fi

dnf install mysql -y 

dnf install tree -y 

dnf install jiihfe -y 

echo "still runing"
