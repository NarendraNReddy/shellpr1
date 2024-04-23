#!/bin/bash
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

set -e 


failure() {

    echo "Failed at $1: $2"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR


R="\e[31m"
G="\e[32m"
Y="\e[33m"
BL="\e[34m"
N="\e[0m"



VALIDATE()
{
    if [ $1 -ne 0 ];
    then 
        echo -e "$2 is ... $R FAILURE $N"
    else 
        echo -e "$2 is ... $G SUCCESS $N"    
    fi
}


check_root()
{
   USERID=$(id -u)

    if [ $USERID -ne 0 ];
    then 
        echo "Be a super user to install the commands"
        exit 1
    else 
        echo "Super User"     
    fi
}  