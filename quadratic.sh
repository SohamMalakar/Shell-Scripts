
# Write a shell script to find the roots of a quadratic equation ax2 + bx + c = 0, considering all  possible cases.

read -p "Enter a b and c: " a b c

x1=$(echo "(-b + sqrt($b ^ 2 - 4 * $a * $c)) / (2 * $a)" | bc)
x2=$(echo "(-b - sqrt($b ^ 2 - 4 * $a * $c)) / (2 * $a)" | bc)

echo "Root 1: $x1"
echo "Root 2: $x2"
