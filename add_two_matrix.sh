#!/bin/bash

# Write a shell script to add two matrices.

read -rp "Enter the number of rows: " rows
read -rp "Enter the number of columns: " columns

echo "Enter the elements of the matrix 1"

for (( i=0; i<rows; i++ ))
do
    for (( j=0; j<columns; j++ ))
    do
        read -rp "Enter the value of element $i,$j: " matrix1["$i"*columns+"$j"]
    done
done

echo "Enter the elements of the matrix 2"

for (( i=0; i<rows; i++ ))
do
    for (( j=0; j<columns; j++ ))
    do
        read -rp "Enter the value of element $i,$j: " matrix2["$i"*columns+"$j"]
    done
done

for (( i=0; i<rows; i++ ))
do
    for (( j=0; j<columns; j++ ))
    do
        matrix3["$i"*"$columns"+"$j"]=$((${matrix1["$i"*columns+"$j"]}+${matrix2["$i"*columns+"$j"]}))
    done
done

echo "Sum of two matrices"

for (( i=0; i<rows; i++ ))
do
    for (( j=0; j<columns; j++ ))
    do
        echo -n "${matrix3["$i"*columns+"$j"]} "
    done
    echo
done
