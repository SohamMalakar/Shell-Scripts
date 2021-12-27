#!/bin/bash

# Write a shell script to multiply two matrices.

read -rp "Enter the number of rows in first matrix: " r1
read -rp "Enter the number of columns in first matrix: " c1

declare -a a b

for (( i=0; i<r1; i++ ))
do
    for (( j=0; j<c1; j++ ))
    do
        read -rp "Enter the value of element $i,$j: " a["$i"*"$c1"+"$j"]
    done
done


read -rp "Enter the number of rows in second matrix: " r2
read -rp "Enter the number of columns in second matrix: " c2


for (( i=0; i<r2; i++ ))
do
    for (( j=0; j<c2; j++ ))
    do
        read -rp "Enter the value of element $i,$j: " b["$i"*"$c2"+"$j"]
    done
done


if [ "$c1" -ne "$r2" ]
then
    echo "Multiplication of two matrices is not possible"
    exit 1
fi


for (( i=0; i<r1; i++ ))
do
    for (( j=0; j<c2; j++ ))
    do
        sum=0

        for (( k=0; k<c1; k++ ))
        do
            sum=$((sum+a[i*c1+k]*b[k*c2+j]))
        done

        c[$i*$c2+$j]=$sum
    done
done


echo "Multiplication of two matrices is: "


for (( i=0; i<r1; i++ ))
do
    for (( j=0; j<c2; j++ ))
    do
        echo -n "${c[$i*$c2+$j]} "
    done

    echo
done
