#!/bin/bash

# Write a shell script to print Pascal triangle.

read -p "Enter the number of rows: " max

i=0

while [ $i -lt $max ]; do

    j=`expr $max - $i - 1`

    while [ $j -gt 0 ]; do

        echo -n " "
        j=`expr $j - 1`
    
    done

    j=0

    while [ $j -le $i ]; do
    
        echo -n "* "
        j=`expr $j + 1`
    
    done

    echo

    i=`expr $i + 1`

done
