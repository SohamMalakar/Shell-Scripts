
# Accept a password from the user and determine if it is strong or a weak password.

read -sp "Enter the password: " pass

# At least 8 characters long
# Contains upper case, lower case and digits

len=$(echo $pass | wc -c) # len + \n character
let len--

no_of_upper=$(echo $pass | grep -o [[:upper:]] | wc -l)
no_of_lower=$(echo $pass | grep -o [[:lower:]] | wc -l)
no_of_digits=$(echo $pass | grep -o [[:digit:]] | wc -l)

if [ $len -ge 8 -a $no_of_upper -gt 0 -a $no_of_lower -gt 0 -a $no_of_digits -gt 0 ]; then
    echo -e "\nStrong Password"
else
    echo -e "\nWeak Password"
fi
