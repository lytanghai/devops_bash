#!/usr/bin/bash

#2: Write a Shell Bash Script to evaluate the status of a file/directory
for i in $(ls .); do
	echo "#########################################"
	if [ -e $i ]; then 
		if [ -f $i ]; then
                	echo  "$i is a file"
        	fi

        	if [ -d $i ]; then
                	echo "$i is a directory"
        	fi

        	if [ -r $i ]; then
                	echo "$i is readable"
        	fi

        	if [ -w $i ]; then
                	echo "$i is writable"
        	fi

        	if [ -x $i ]; then
                	echo "$i is executable"
        	fi
	fi
done
