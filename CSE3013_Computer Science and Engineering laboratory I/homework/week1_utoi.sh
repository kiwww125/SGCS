#!/bin/bash

echo "working directory:"

read directory
change=1

if [ -z $directory ] 
then 
	cd $HOME
	#echo "home directory"	
else
	if [ -d $directory -a -w $directory -a -r $directory ]
	then
		cd $directory
		#echo "access to $directory"		
	else 
		echo "ERROR : cannot access given directory"
		change=0
	fi	
fi

if [ $change -eq 1 ]
then
	for filename in *
	do
		for ind in ${#filename}
		do
			if [ 'a' <= ${filename:ind:1} -io ${filename:ind:1} <= 'z' ] 
				tr [:lower:] [:upper:] 
					
		done
	done
fi		


