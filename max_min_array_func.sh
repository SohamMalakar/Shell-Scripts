#!/bin/bash

# WAP to input integers in an array and display the maximum and minimum values.

read -p "Enter the number of elements in the array: " n

echo "Enter the elements of the array"
for (( i=0; i<$n; i++ ))
do
    read a[$i]
done

echo "The array is"
echo ${a[@]}

echo "The maximum element is"
echo ${a[@]:0} | tr ' ' '\n' | sort -n | tail -1

echo "The minimum element is"
echo ${a[@]:0} | tr ' ' '\n' | sort -n | head -1
