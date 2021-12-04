#!/bin/bash

# WAP to input integers in an array and display the maximum and minimum values.

read -rp "Enter the number of integers in the array: " n

declare -a a

for i in $(seq 1 "$n"); do
    read -r a["$i"]
done

max=${a[1]}
min=${a[1]}

for i in $(seq 1 "$n"); do
    
    if [ "$max" -lt "${a[i]}" ]; then
        max=${a[i]}
    fi

    if [ "$min" -gt "${a[i]}" ]; then
        min=${a[i]}
    fi

done

echo "Largest number: $max"
echo "Minimum number: $min"
