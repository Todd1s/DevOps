#!/bin/bash

filename=$(date +"%d_%m_%Y_%H_%M_%S.status")
echo "$1" > $filename