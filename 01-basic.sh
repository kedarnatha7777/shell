#!/bin/bash 

echo "this is basic file"

person=$1
person1=$2 

echo "$person : how are you $person1" 
echo "$person1 : me good about you  $person1"
echo "$person :  me also good how is it going  $person1"
echo "$person1 : well going good devops  $person"
# special varibales 
echo "all the arg passed $@"
echo "count of all the arg passed $#"
echo "cureent user is $USER"
echo "cureent workdir is $PWD"
echo "hostname is $HOSTNAME"
echo "current script file name $0"
echo "pid of the current command $$"
sleep 60 $ 
echo "pid of the previous command is $!"
echo "exit status of the previosu command is $?"

#read 

echo "enter user name "
read $USERNAME
echo "enter passwd "
read -s   $PASSWORD

echo "user is ::$USERNAME & password is $PASSWORD"

# conditions 

echo "enter the age" 

read age 

if [ $age -le 18 ]
then 
    echo "you are eligible for voting & Age is $age"
else
    echo "you are not  eligible for voting & Age is $age"
    exit 1 
fi 

