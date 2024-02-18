#!/bin/bash

function color_definder {
    case $1 in 
        1) echo "white";;
        2) echo "red";;
        3) echo "green";;
        4) echo "blue";;
        5) echo "purple";;
        6) echo "black";;
    esac
}

echo "Column 1 background = $1 ($(color_definder $1))"
echo "Column 1 font color = $2 ($(color_definder $2))"
echo "Column 2 background = $3 ($(color_definder $3))"
echo "Column 2 font color = $4 ($(color_definder $4))"