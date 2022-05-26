guess=0
number=$(find * -maxdepth 0 -type f | wc -l)

while [ $guess -ne $number ]

do 
    echo -n "How many files are there in this directory?"  ; 
    read guess 

    if [ "$guess" -lt $number ] ; then 
        echo "too low! try again"
    elif [ "$guess" -gt $number ] ; then 
        echo "too high! try again"
    fi 
done 

echo "CONGRATULATIONS YOU GUESSED THE NUMBER!"
echo "These files are located in this directory:" && ls -1 

exit