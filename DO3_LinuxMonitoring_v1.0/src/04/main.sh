#!/bin/bash


fc1=$(cat config.conf | awk -F '=' 'NR == 1 {printf $2}')
bc1=$(cat config.conf | awk -F '=' 'NR == 2 {printf $2}')
fc2=$(cat config.conf | awk -F '=' 'NR == 3 {printf $2}')
bc2=$(cat config.conf | awk -F '=' 'NR == 4 {printf $2}')

if [[ -z "$fc1" ]]; then
    fc1=1
fi
if [[ -z "$bc1" ]]; then
    bc1=2
fi
if [[ -z "$fc2" ]]; then
    fc2=3
fi
if [[ -z "$bc2" ]]; then
    bc2=4
fi

if [[ $# -ne 0 ]]; then
    echo "incorrect input, use config file"
    exit 1
elif [[ $fc1 == $bc1 || $fc2 == $bc2 ]]; then
    echo "the font and background color cannot be the same"
    exit 1
elif ! [[ $fc1 =~ ^[1-6]$ && $bc1 =~ ^[1-6]$ && $fc2 =~ ^[1-6]$ && $bc2 =~ ^[1-6]$ ]]; then
    echo "the numbers are not in the allowed range"
    exit 1
fi




output=$(./color.sh $fc1 $bc1 $fc2 $bc2)
echo -e "$output\n"

color_finder=$(./color_finder.sh $fc1 $bc1 $fc2 $bc2)
echo "$color_finder"
