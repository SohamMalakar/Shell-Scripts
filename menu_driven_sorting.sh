#!/bin/bash

# Write a menu driven program to sort 'n' number of integers in ascending order using i) Bubble Sort, 2) Selection Sort and 3) Insertion Sort.

bubble_sort()
{
    for (( i=0; i<$n; i++ ))
    do
        for (( j=0; j<$n-1; j++ ))
        do
            if [ ${arr[$j]} -gt ${arr[$j+1]} ]
            then
                temp=${arr[$j]}
                arr[$j]=${arr[$j+1]}
                arr[$j+1]=$temp
            fi
        done
    done
}

selection_sort()
{
    for (( i=0; i<$n; i++ ))
    do
        min=${arr[$i]}
        for (( j=i+1; j<$n; j++ ))
        do
            if [ ${arr[$j]} -lt $min ]
            then
                min=${arr[$j]}
                index=$j
            fi
        done
        temp=${arr[$i]}
        arr[$i]=$min
        arr[$index]=$temp
    done
}

insertion_sort()
{
    for (( i=1; i<$n; i++ ))
    do
        key=${arr[$i]}
        j=$((i-1))
        while [ $j -ge 0 ] && [ ${arr[$j]} -gt $key ]
        do
            arr[$j+1]=${arr[$j]}
            j=$((j-1))
        done
        arr[$j+1]=$key
    done
}

echo "Enter the number of elements to be sorted"
read n

echo "Enter the elements"
for (( i=0; i<$n; i++ ))
do
    read arr[$i]
done

echo "Enter an algorithm to sort the array"
echo "1. Bubble Sort"
echo "2. Selection Sort"
echo "3. Insertion Sort"
read -p "Select: " sel

case $sel in
    1)
        bubble_sort
        ;;
    2)
        selection_sort
        ;;
    3)
        insertion_sort
        ;;
    *)
        echo "Invalid choice"
        exit
        ;;
esac

echo "Sorted array is"
echo ${arr[@]}
