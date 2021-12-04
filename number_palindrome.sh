
read -p "Enter the number: " n

sum=0
tmp=$n

while [ $tmp -gt 0 ]; do

    let sum*=10
    let sum+=tmp%10
    let tmp/=10

done

if [ $n -eq $sum ]; then
    echo "It's a palindrome"
else
    echo "It's not a palindrome"
fi
