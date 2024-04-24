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
    echo "Folder does not exists"    
fi 

