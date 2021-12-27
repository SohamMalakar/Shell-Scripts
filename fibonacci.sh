#!/bin/bash

read -p "Enter lower and upper limit for printing fibonacci series: " l u

a=0
b=1

if (( l < 0 )); then
    echo "limits should be positive"
    exit
fi

if (( l > u )); then
    echo "Upper limit should be greater than lower limit!"
    exit
fi

echo "Fibonacci series:"

while (( $a<=u )); do
    
    if (( l<=$a )); then
        printf "%d\t" $a
    fi

    c=$((a+b))
    a=$b
    b=$c
    
done

printf "\n"
