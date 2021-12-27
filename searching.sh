#!/bin/bash

# Write a shell script to find a number using sequential search method.

read -p "Enter the number to be searched: " num
read -p "Enter the file name: " file

for i in `cat $file`
do
    if [ $num -eq $i ]
    then
        echo "Number found"
        exit
    fi
done
