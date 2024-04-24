#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ];
then 
    echo "Folder exists"
else 
    echo "Please create a folder:$SOURCE_DIRECTORY"    
fi


FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

echo $FILES