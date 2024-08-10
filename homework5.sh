#!/biin/bash

#5. Write a Shell Bash Script to check if the disk space crosses the limit
echo "date: $(date)"

disk_threshold='90'

#Disk
disk_usage(){
disk_use=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)
if [ $disk_use -gt $disk_threshold ]; then
	echo "disk usage has exceeded the threshold. Currently $disk_use"
else
	echo "disk is in healthy state"
fi
}
disk_usage



