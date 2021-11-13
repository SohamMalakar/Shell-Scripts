
read -p "Enter the number: " n

r=0
sum=0

tmp=$n

while [ $tmp -gt 0 ]; do

    let r=$((tmp%10))
    let sum*=10
    let sum+=r
    let tmp/=10

done

if [ $n -eq $sum ]; then
    echo "It's a palindrome"
else
    echo "It's not a palindrome"
fi
