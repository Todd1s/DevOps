#!/bin/bash

echo "Total number of folders (including all nested ones) = $(sudo find "$1" -type d |  wc -l)" 
echo "TOP 5 folders of maximum size arranged in descending order (path and size): "
echo "$(sudo du "$1" -h | sort -rh | head -n 5 | awk '{print NR, "-", $2 ",", $1}')"
echo "Total number of files = $(sudo find "$1" -type f |  wc -l)"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $(sudo find "$1" -name "*.conf" | wc -l)"
echo "Text files =   $(sudo find "$1" -name "*.txt" | wc -l)"
echo "Executable files = $(sudo find "$1" -executable | wc -l)"
echo "Log files (with the extension .log) = $(sudo find "$1" -name "*.log" | wc -l)  "
echo "Archive files =  $(sudo find "$1" -name "*.rar" -o -name "*.zip" -o -name "*.7z" -o -name "*.sit" | wc -l)"
echo "Symbolic links = $(sudo find "$1" -type l |  wc -l)  "
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):  "
echo "$(sudo find "$1" -type f -exec du -h {} + | sort -rh | head -n 10 | awk -F '.' '{if (NF > 1) print $0 " " $NF; else print $0 " -"}' | awk '{print NR, "-", $2 ",", $1 ",", $3}')"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file): " 
echo "$(sudo find "$1" -type f -executable -exec md5sum  {} + | sort -rh | head -n 10 | awk '{print NR, "-", $2 ",", $1}')"


