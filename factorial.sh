#!/bin/bash
calculate_factorial() {
    local num=$1
    local result=1

    for ((i=1; i<=num; i++)); do
        result=$((result * i))
    done

    echo $result
}
echo "Factorial of 5 is: $(calculate_factorial 5)"
echo "Factorial of 8 is: $(calculate_factorial 8)"
echo "Factorial of 3 is: $(calculate_factorial 3)"
