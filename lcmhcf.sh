#!/bin/bash
calculate_gcd() {
    local a=$1
    local b=$2

    while [ $b -ne 0 ]; do
        remainder=$((a % b))
        a=$b
        b=$remainder
    done

    echo $a
}
calculate_lcm() {
    local a=$1
    local b=$2
    local gcd=$(calculate_gcd $a $b)
    local lcm=$((a * b / gcd))

    echo $lcm
}
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
    gcd_result=$(calculate_gcd $num1 $num2)
    lcm_result=$(calculate_lcm $num1 $num2)
    echo "The GCD of $num1 and $num2 is: $gcd_result"
    echo "The LCM of $num1 and $num2 is: $lcm_result"
