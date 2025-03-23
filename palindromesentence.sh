#!/bin/bash
is_palindrome() {
    local str=$1
    local reversed=""
    for ((i=${#str}-1; i>=0; i--)); do
        reversed="${reversed}${str:i:1}"
    done
    if [ "$str" == "$reversed" ]; then
        echo "true"
    else
        echo "false"
    fi
}
read -p "Enter a string: " user_input
result=$(is_palindrome "$user_input")
if [ "$result" == "true" ]; then
    echo "$user_input is a palindrome."
else
    echo "$user_input is not a palindrome."
fi
