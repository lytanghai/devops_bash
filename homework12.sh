#!/bin/bash

is_prime() {
    num=$1
    if [ $num -le 1 ]; then
        echo "$num is not a prime number."
        exit
    fi

    is_prime=1
    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            is_prime=0
            break
        fi
    done

    if [ $is_prime -eq 1 ]; then
        echo "$num is a prime number."
    else
        echo "$num is not a prime number."
    fi
}

read -p "Enter a number to check if it's prime: " number
is_prime $number
