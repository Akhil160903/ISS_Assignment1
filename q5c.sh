read -p "Enter string:" string

    len=${#string}

for ((i = $len/2-1; i >=0 ; i--))
    do

    reverse="$reverse${string:$i:1}" 
    done
    for ((i = $len/2; i <= $len-1; i++))
    do

    forward="$forward${string:$i:1}" 
    done
    echo "$reverse$forward"
