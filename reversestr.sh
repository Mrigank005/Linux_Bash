#!/bin/bash
read -p "Enter a string: " user_input
length=${#user_input}
reversed=""
for ((i=$length-1; i>=0; i--)); do
    reversed="${reversed}${user_input:i:1}"
done
echo "The reversed string is: $reversed"
