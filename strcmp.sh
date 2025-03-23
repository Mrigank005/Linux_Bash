#!/bin/bash
read -p "Enter the first string: " string1
read -p "Enter the second string: " string2
length1=${#string1}
length2=${#string2}
echo "Length of the first string: $length1"
echo "Length of the second string: $length2"
concatenated_string="${string1}${string2}"
echo "Concatenated string: $concatenated_string"
if [ "$string1" == "$string2" ]; then
    echo "The strings are equal."
else
    echo "The strings are not equal."
fi
