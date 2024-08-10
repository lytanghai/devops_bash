#!/biin/bash

#9. Write a Shell Bash Script to show CPU temperature
sudo apt-get install lm-sensors

cpu_temp=$(sensors | grep 'Package id 0:' | awk '{print $4}')

# Display the CPU temperature
echo "Current CPU Temperature: $cpu_temp"
