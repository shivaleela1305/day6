factorial=1
read -p "enter a num: " num
for ((i=1; i<=num; i++))
do
factorial=$((factorial*i))
done
echo "the factorial of $num is $factorial"
