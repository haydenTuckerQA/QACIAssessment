#!/bin/bash
echo "Enter a number you would like to test if prime"
read input

if [[ "$input" =~ ^[0-9]+$ ]]
then
	i=2
    	x=0 
    	while [ $i -lt $input ]; do 
        	if [ $(($input%$i)) -eq 0 ]
		then
        		echo "$input is not a prime number!"
			exit
         	fi
        	i=$((i + 1))
    	done
    	echo "$input is a prime number!"
else
	echo "You did not enter a number!"
fi
