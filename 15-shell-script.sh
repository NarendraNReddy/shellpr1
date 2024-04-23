#!/bin/bash

COURSE="Devops with current script"

echo "Before calling other script,the variable course:$COURSE"
echo "Pid of the current script:$$"

./16-other-script.sh

echo "After calling other script,the variable course:$COURSE"