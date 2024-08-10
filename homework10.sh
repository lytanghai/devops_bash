#!/biin/bash

#10. Write a Shell Bash Script to check if a number input from standard input is odd or even

read -p 'input a number ' ipt
echo "read : $ipt"

if (( $ipt % 2 == 0 )); then
	echo "It is a even number"
else
	echo "It is a odd number"
fi
