#!/bin/bash

read a
read b

if [ $a -lt $b ]; then
    echo "X is less than Y"
elif [ $a -eq $b ]; then   
    echo "X is equal to Y" 
elif [ $a -gt $b ]; then
    echo "X is greater than Y"
fi

# if ((a > b)); then
#     echo 0
# elif ((a == b)); then
#     echo 1
# else 
#     echo 2
# fi