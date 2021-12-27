#!/bin/bash

str=$1
reverse=$(echo $str | rev)

if [ "$str" == "$reverse" ]; then
    echo "Pailndrome"
else
    echo "Not a palindrome"
fi
