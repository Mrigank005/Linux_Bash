#!/bin/bash
sum_of_digits() {
    number=$1
    digit_sum=0

    # Iterate through each digit and add it to the sum
    while [ $number -gt 0 ]; do
        digit=$((number % 10))
        digit_sum=$((digit_sum + digit))
        number=$((number / 10))
    done

    echo $digit_sum
}
read -p "Enter a number: " user_input
    result=$(sum_of_digits $user_input)
    echo "The sum of the digits of $user_input is: $result"
