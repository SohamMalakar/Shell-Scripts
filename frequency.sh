#!/bin/bash

# Write a shell script that take a word from user and find out the frequency of the word in a given file.

read -p "Enter the file name: " file
read -p "Enter the word: " word

count=$(grep -o $word $file | wc -l)

echo "Frequency of the word: $count"
