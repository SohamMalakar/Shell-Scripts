#!/bin/bash

# Write a shell script to find out the n-th term of the Fibonacci Series.

read -p "Enter the term: " n

a=0
b=1
i=0

while [ $i -lt $n ]; do

    echo "$i: $a"

    c=`expr $a + $b`
    a=$b
    b=$c
    i=`expr $i + 1`

done
