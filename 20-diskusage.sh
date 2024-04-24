#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=75 

while IFS= raead -r line 
do 
    echo $line
done <<< $DISK_USAGE
