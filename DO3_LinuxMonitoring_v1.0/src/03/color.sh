#!/bin/bash

fc[1]="\033[97m"
fc[2]="\033[91m"
fc[3]="\033[92m"
fc[4]="\033[96m"
fc[5]="\033[95m"
fc[6]="\033[30m"
bc[1]="\033[107m"
bc[2]="\033[101m"
bc[3]="\033[102m"
bc[4]="\033[106m"
bc[5]="\033[105m"
bc[6]="\033[40m"
sc[1]="\033[0m"


output=$(./system_information.sh)
output=$(echo -e "$output" | sed "s/^/\\${bc[$1]}\\${fc[$2]}/" | sed "s/=/= \\${bc[$3]}\\${fc[$4]}/" | sed "s/$/\\${sc[1]}/")
echo -e "$output"
