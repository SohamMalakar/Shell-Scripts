#!/bin/bash

# Write a shell script to find a number using binary search technique.

read -rp "Enter an integer you want to search from the text file \"sorted_numebrs.txt\": " search

numbers=$(cat < sorted_numbers.txt | tr '\n' ' ')
i=0

for number in $numbers; do
    arr[$i]="$number"
    i=$(( i + 1 ))
done

binary_search()
{
    l=0
    u=${#arr[@]}

    while [ $l -lt "$u" ]; do
        
        mid=$(( (l + u) / 2 ))
        
        if [ "${arr[$mid]}" -eq "$1" ]; then
            echo "found"
            return
        elif [ "$1" -lt "${arr[$mid]}" ]; then
            u=$mid
        else
            l=$((mid + 1))
        fi

    done

    echo "not found"
    return
}

binary_search "$search"
