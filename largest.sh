#!/bin/bash

# Write a shell script to find the largest number among three numbers.

read -p "Enter three numbers: " a b c

if [ $a -gt $b -a $a -gt $c ]; then
    echo "$a is the largest of three"
elif [ $b -gt $a -a $b -gt $c ]; then
    echo "$b is the largest of three"
else
    echo "$c is the largest of three"
fi
