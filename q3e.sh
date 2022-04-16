sed -e 's/[^[:alpha:]]/ /g' quotes.txt | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' | 
sort | uniq -c | sort -nr |while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "${name} ${count}"
        fi
done
