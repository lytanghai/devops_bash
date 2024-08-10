#!/usr/bin/bash

#3: Write a Shell Bash Script to report server related information

list_func() {

	echo "1. Check CPU"
	echo "2. Check Disk"
	echo "3. Disk Usage"
	echo "4. RAM Usage"
	echo "5. Show all above"

}

echo "Server Information"
echo "####################################"
echo "user: $(whoami)"
echo "date: $(date)"
echo "uptime: $(uptime | awk '{print $3}')"
echo "status: $(uptime | awk '{print $2'})"
echo "####################################"
list_func
read -p "Prompt: " prompt

if ! [[ $prompt =~ ^[1-5]$ ]]; then
	echo "Invalid Prompt $prompt"
else
       if [ 1 -eq $prompt ]; then
		htop
		echo "htop"
	elif [ 2 -eq $prompt ]; then
		if ! command -v fdisk &> /dev/null; then
			echo "Installing fdisk util"
			sudo apt install fdisk -y
		else
			fdisk -l
		fi
	
	elif [ 3 == $prompt ]; then
		df -h | xargs | awk '{print "Free/total disk: " $11 " / " $9}'
	elif [4 -eq $prompt ]; then
		free -h
	else 
		echo "CPU::" 
		#htop
	fi
fi
	
