#!/biin/bash

#11. Write a Shell Bash Script to check if a provided number is Armstrong or not

# Function to calculate the power of a number
power() {
  local base=$1
  local exp=$2
  local result=1
  for (( i=0; i<$exp; i++ )); do
    result=$((result * base))
  done
  echo $result
}

# Prompt the user for a number
echo "Please enter a number: "
read number

# Check if the input is a valid number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Please enter a non-negative integer."
  exit 1
fi

# Convert the number to an array of digits
digits=($(echo $number | grep -o .))
num_digits=${#digits[@]}

# Calculate the sum of each digit raised to the power of the number of digits
sum=0
for digit in "${digits[@]}"; do
  sum=$((sum + $(power $digit $num_digits)))
done

# Check if the sum is equal to the original number
if [[ $sum -eq $number ]]; then
  echo "The number $number is an Armstrong number."
else
  echo "The number $number is not an Armstrong number."
fi

