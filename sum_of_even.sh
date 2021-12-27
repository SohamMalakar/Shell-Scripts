#!/bin/bash

read -p "Enter n: " n

i=0
sum=0

while [ $i -lt $n ]; do
    
    if [ `expr $i % 2` -eq 0 ]; then
        let sum+=i
    fi

    let i++
done

echo $sum
