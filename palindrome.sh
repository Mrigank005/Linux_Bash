#!/bin/bash
is_palindrome() {
    local num=$1
    local reversed=""
    local original_num=$num
    while [ $num -gt 0 ]; do
        digit=$((num % 10))
        reversed="${reversed}${digit}"
        num=$((num / 10))
    done
    if [ "$reversed" == "$original_num" ]; then
        echo "true"
    else
        echo "false"
    fi
}
read -p "Enter a number: " user_input
    result=$(is_palindrome $user_input)
    if [ $result == "true" ]; then
        echo "$user_input is a palindrome."
    else
        echo "$user_input is not a palindrome."
    fi
