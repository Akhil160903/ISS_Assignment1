IFS=$'\n'
echo '\n' >> $1
i=1
while read line
do
a=$(wc -w <<< "$line")
echo "Line No:<$i> - Count of Words:[$a]"
i=$((i+1))
done < $1

