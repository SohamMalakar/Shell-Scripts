#!/bin/bash

# Write a shell script to display grades according to input marks using case.

read -p "Enter your marks: " marks

case $marks in

    100|[9][0-9])
        echo "Outstanding"
        ;;
    [6-8][0-9])
        echo "Excellent"
        ;;
    [4-5][0-9])
        echo "Good"
        ;;
    *)
        echo "Try Again"

esac
