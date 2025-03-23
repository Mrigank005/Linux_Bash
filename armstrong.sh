#!/bin/bash
count_digits() {
    local num=$1
    local count=0

    while [ $num -gt 0 ]; do
        num=$((num / 10))
        count=$((count + 1))
    done

    echo $count
}
is_armstrong() {
    local num=$1
    local sum=0
    local original_num=$num
    local num_digits=$(count_digits $num)

    while [ $num -gt 0 ]; do
        digit=$((num % 10))
        sum=$((sum + digit ** num_digits))
        num=$((num / 10))
    done

    if [ $sum -eq $original_num ]; then
        echo "true"
    else
        echo "false"
    fi
}
read -p "Enter a number: " user_input
    result=$(is_armstrong $user_input)

    if [ $result == "true" ]; then
        echo "$user_input is an Armstrong number."
    else
        echo "$user_input is not an Armstrong number."
    fi
