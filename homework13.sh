#!/bin/bash

decimal_to_binary() {
    dec=$1
    echo "The binary representation of $dec is: "
    echo "obase=2; $dec" | bc
}

read -p "Enter a decimal number to convert to binary: " number
decimal_to_binary $number
