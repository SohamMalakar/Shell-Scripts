
# Write a shell script to check if a given year is leap year or not.

read -p "Enter a year to check if the year is leap year or not: " year

flag=0

if [ `expr $year % 4` -eq 0 ]; then
    if [ `expr $year % 100` -eq 0 ]; then
        if [ `expr $year % 400` -eq 0 ]; then
            let flag=1
        else
            let flag=0
        fi
    else
        let flag=1
    fi
else
    let flag=0
fi

if [ $flag -eq 1 ]; then
    echo "It's a leap year"
else
    echo "It's not a leap year"
fi
