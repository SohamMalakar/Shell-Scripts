
# Write a shell script to count the words, lines and characters of a given file. File name should be provided at run time.

read -p "Enter the file name: " file

if [ -f $file ]; then
    echo "File exists"
    echo "Word count $(cat $file | wc -w)"
    echo "Lines count $(cat $file | wc -l)"
    echo "Characters count $(cat $file | wc -c)"
else
    echo "File does not exists"
fi
