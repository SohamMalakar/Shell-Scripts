#!/bin/bash

# Write a shell script to print Pascal diamond.

read -p "Enter the maximum number of stars in a row: " max

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

i=0

while [ $i -lt `expr $max - 1` ]; do

    j=0

    while [ $j -le $i ]; do

        echo -n " "
        j=`expr $j + 1`
    
    done

    j=`expr $max - $i - 1`

    while [ $j -gt 0 ]; do

        echo -n "* "
        j=`expr $j - 1`
    
    done
    
    echo

    i=`expr $i + 1`

done
