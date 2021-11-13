
# Write a shell script that gets executed at the moment of user login and it displays Good Morning, Good afternoon, Good Evening, Good Night, depending upon the time at which the user logs on.

if [ $(date +%H) -lt 12 ]; then
    echo "Good Morning"
elif [ $(date +%H) -lt 17 ]; then
    echo "Good Afternoon"
else
    echo "Good Evening"
fi
