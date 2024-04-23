#!/usr/bin

set -e 


failure() {

    echo "Failed at $1: $2"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR


USERID=$(id -u)
if [ $USERID -ne 0 ];
then 
    echo "Please be a super user"
    exit 1
else 
     echo "Super User:"  
fi
dnf install mysqldddd -y

   

dnf install git -y

echo "Hello"

 