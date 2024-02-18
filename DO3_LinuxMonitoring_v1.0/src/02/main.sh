#!/bin/bash

info=$(./system_information.sh)
echo "$info"
read -p "Write to file? (Y/N) " answer
if [ $answer == "Y" ] || [ $answer == "y" ]; then
./write_to_file.sh "$info"
else
echo "File will not be created"
fi