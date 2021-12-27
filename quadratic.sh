#!/bin/bash

# Write a shell script to find the roots of a quadratic equation ax2 + bx + c = 0, considering all  possible cases.

read -rp "Enter a b and c: " a b c

disc=$((b * b - 4 * a * c))

echo "$disc"

if [ "$disc" -lt 0 ]; then
    echo "No real roots"
    exit 1
fi

x1=$(echo "(-$b + sqrt($disc)) / (2 * $a)" | bc)
x2=$(echo "(-$b - sqrt($disc)) / (2 * $a)" | bc)

echo "Root 1: $x1"
echo "Root 2: $x2"
