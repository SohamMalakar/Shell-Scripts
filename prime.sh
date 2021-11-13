
read -p "Enter a number: " n

is_prime=1
i=2

if [ $n -le 1 ]; then
    echo "It's not a prime number"
    exit
fi

u=$(echo "sqrt($n)" | bc)

while [ $i -le $u ]; do
    
    if [ `expr $n % $i` -eq 0 ]; then
        is_prime=0
        break
    fi
    
    i=`expr $i + 1`

done

if [ $is_prime -eq 1 ]; then
    echo "It's a prime number"
else
    echo "It's not a prime number"
fi
