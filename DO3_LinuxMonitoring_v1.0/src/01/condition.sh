#!/bin/bash
[[ -z "$1" ]] || [[ $1 =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]] || [[ -n "$2" ]]