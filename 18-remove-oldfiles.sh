#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
BL="\e[34m"
N="\e[0m"

SOURCE_DIRECTORY=/tmp/app-logs


if [ -d $SOURCE_DIRECTORY ];
then 
    echo "Folder exists"
else 
    echo "Folder does not exists.Please create a folder" 
    exit 1   
fi 

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

#echo $FILES


while IFS= read -r line
do 
    echo $line
done <<< $FILES 


