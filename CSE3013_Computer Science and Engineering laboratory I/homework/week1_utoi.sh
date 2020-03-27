#!/bin/bash

echo "working directory:"
read directory

if [ -z $directory ] 
then 
	cd $HOME
else
	if [ -d $directory -a -w $directory -a -r $directory ]
	then
		cd $directory
	else 
		echo "ERROR : cannot access given directory"
		exit 0
	fi	
fi

for filename in *
do
	if [ -f $filename ]
	then 
		mv $filename filename | tr '[A-Z][a-z]' '[a-z][A-Z]'	
	fi
done
