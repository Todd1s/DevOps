#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "incorrect input, one parameter is needed "
    exit 1
elif [[ "$1" != */ ]]; then
    echo "The path should end with a '/'"
    exit 1
elif [ ! -d "$1" ]; then
    echo "Path does not exist or is not a directory."
    exit 1
fi
START_TIME=$(date +%s)
output=$(./system_information.sh "$1")
echo "$output"
END_TIME=$(date +%s)
difference=$(( $END_TIME - $START_TIME ))
echo "Script execution time (in seconds) = $(printf $difference)"

