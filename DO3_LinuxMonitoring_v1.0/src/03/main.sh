#!/bin/bash

if [[ $# -ne 4 ]]; then
    echo "incorrect input, 4 digits required"
    exit 1
elif [[ $1 == $2 || $3 == $4 ]]; then
    echo "the font and background color cannot be the same"
    exit 1
elif ! [[ $1 =~ ^[1-6]$ && $2 =~ ^[1-6]$ && $3 =~ ^[1-6]$ && $4 =~ ^[1-6]$ ]]; then
    echo "the numbers are not in the allowed range"
    exit 1
fi

output=$(./color.sh $1 $2 $3 $4)
echo -e "$output"
