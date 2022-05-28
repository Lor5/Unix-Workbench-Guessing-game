## guess is read by program as whatever number is entered but for the purposes of defining guess it equals zero
guess=0
## the correct answer changes based on where the program is run based on the depth of the directory the program is run in
number=$(find * -maxdepth 0 -type f | wc -l)
## loop created and will continue until correct answer is found
while [ $guess -ne $number ]
##read guess and report if answer is higher or lower until it is correct
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
## list files inlcuded in directory
echo "These files are located in this directory:" && ls -1 
exit