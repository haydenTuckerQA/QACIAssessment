#!/bin/bash

echo "Enter Y if you would like to delete the current log file"
read input

if [ "$input" == "Y" ]
then
	rm loggedUsersIp.txt
fi

echo "-----Logged In Users-----" >> loggedUsersIp.txt
echo $(who) >> loggedUsersIp.txt
echo "Host IP Address" $(hostname -I) >> loggedUsersIp.txt
echo "-------------------------" >> loggedUsersIp.txt

