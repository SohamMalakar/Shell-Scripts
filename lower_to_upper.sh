#!/bin/bash

# Write a shell script to convert the content of a file from lower case to upper case.

read -p "Enter the name of the file: " fileName

cat $fileName | tr '[:lower:]' '[:upper:]' > ${fileName}.upper && echo "File converted to upper case"

echo "output:"

cat $fileName

echo
