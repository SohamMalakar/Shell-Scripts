
# Write a shell script to find out the factorial of a given number.

fact()
{
    i=1
    f=1

    while [ $i -le $1 ]; do
        f=`expr $f \* $i` 
        i=`expr $i + 1`
    done

    echo $f

    return
}

read -p "Enter a number: " n

fact $n