#!/bin/bash

read -p "Enter the range: " lower upper
i=$lower

IsPrime()
{
    local is_prime=1
    local i=2
    local n=$1

    if [ $n -le 1 ]; then
        is_prime=0
        echo $is_prime
        return
    fi

    u=$(echo "sqrt($n)" | bc)

    while [ $i -le $u ]; do

        if [ `expr $n % $i` -eq 0 ]; then
            is_prime=0
            break
        fi
        
        i=`expr $i + 1`

    done

    echo $is_prime

    return
}

while [ $i -le $upper ]; do
    
    if [ $(IsPrime $i) -eq 1 ]; then
        printf "%d " $i
    fi

    i=`expr $i + 1`

done

echo
