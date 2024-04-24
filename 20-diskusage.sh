#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=75 

while IFS= read -r line 
do 
    USAGE=$(echo $line | awk -F "" '{print $6F}')
    FOLDER=$(echo $line | awk -F "" '{print $NF}')
    echo $USAGE
    #echo $FOLDER

done <<< $DISK_USAGE
