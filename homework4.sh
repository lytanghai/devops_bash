#!/biin/bash

#4. Write a Shell Bash Script to report if CPU usage exceeds the threshold
echo "date: $(date)"

cpu_threshold='80'
mem_threshold='100'
disk_threshold='90'

#CPU
cpu_usage(){
cpu_idle=$(top -b -n 1 | grep Cpu | awk '{print $8}' | cut -f 1 -d ".")
cpu_use=$(expr 100 - $cpu_idle)
echo "cpu utilization: $cpu_use" 
if [ $cpu_use -gt $cpu_threshold ]; then
	echo "cpu warning!"
else
	echo "cpu is healthy."
fi
}

#MEM
mem_usage(){
mem_free=$(free -m | grep "Mem" | awk '{print $4+$6}')
echo "Memory space free: $mem_free MB"

if [ $mem_free -lt $mem_threshold ]; then
	echo "Memory is less then threshold"
else
	echo "Memory is in healthy state"
fi
}

#Disk
disk_usage(){
disk_use=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)
if [ $disk_use -gt $disk_threshold ]; then
	echo "disk warning"
else
	echo "disk is in healthy state"
fi
}
cpu_usage
mem_usage
disk_usage



