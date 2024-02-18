#!/bin/bash
./condition.sh "$1" "$2"
if [ $? -eq 0 ];
    then
    echo "invalid input"
    else
    echo "$1" 
fi
