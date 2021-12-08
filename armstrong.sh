
# Write a shell script that takes a lower and upper bound and prints all the armstrong numbers between the bounds.

if [ $# -ne 2 ]
then
    echo "Usage: $0 <lower> <upper>"
    exit 1
fi

lower=$1
upper=$2

for (( i=lower; i<=upper; i++ ))
do
    sum=0
    temp=$i

    pow=${#i}

    while [ "$temp" -gt 0 ]
    do
        digit=$(( temp % 10 ))
        p=$(echo "$digit ^ $pow" | bc)
        sum=$(( sum + p ))
        temp=$(( temp / 10 ))
    done

    if [ "$sum" -eq "$i" ]
    then
        echo "$i"
    fi
done
