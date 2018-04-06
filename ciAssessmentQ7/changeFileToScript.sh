#!/bin/bash
echo "Enter the name of an existing file you would like to change to a .sh script and make executable"
read fullFileName

if [ -e ${fullFileName} ]
then 
	fileName=$(basename -- "$fullFileName")
	fileName="${fileName%.*}"
	sudo mv ${fullFileName} ${fileName}.sh
	sudo chmod +x ${fileName}.sh
	echo "The file has been changed to a .sh and made executable"
else
	echo "The filename you specified does not exist!"
fi
