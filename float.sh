read -p "enter 1st num: " a
read -p "enter 2nd num: " b
echo $a
echo $b
z= echo $a $b | awk '{print $1+$2}' 
echo $z


