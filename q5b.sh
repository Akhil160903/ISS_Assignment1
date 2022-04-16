read str
n=${#str}
rstr=""

#part a
for ((i=n-1; i>=0; i--))
do
    rstr=$rstr"${str:$i:1}"
done

#part b
for ((i=0; i<n; i++))
do
    y="${rstr:$i:1}"
    y=$(echo "$y" | tr "0-9a-z" "1-9a-z_" | tr "0-9A-Z" "1-9A-Z_")
    printf $y
done
