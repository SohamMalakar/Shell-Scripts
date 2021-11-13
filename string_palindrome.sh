
# Write a shell script to reverse a string and check whether it is a palindrome.

str=$1

reverse=""

len=$(echo $str | wc -c)

let len--

while [ $len -gt 0 ]; do

    tmp=$(echo $str | cut -c $len)
    reverse=$reverse$tmp
    let len--
done

if [ "$reverse" == "$str" ]; then
    echo "Palindrome"
else
    echo "Not a palindrome"
fi
