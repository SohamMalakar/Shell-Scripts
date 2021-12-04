
# Write a shell script to sort a set of integer numbers using bubble sort.

arr=(10 -5 8 -3 -2 -1)

for (( i=0; i<${#arr[@]}; i++ ))
do
    for (( j=0; j<${#arr[@]}; j++ ))
    do
        if [ ${arr[$i]} -lt ${arr[$j]} ]
        then
            temp=${arr[$i]}
            arr[$i]=${arr[$j]}
            arr[$j]=$temp
        fi
    done
done

echo "The array is"
echo ${arr[@]}
