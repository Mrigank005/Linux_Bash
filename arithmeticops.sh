#!/bin/bash
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2
sum=$((num1 + num2))
difference=$((num1 - num2))
product=$((num1 * num2))
if [ "$num2" -ne 0 ]; then
  division=$(($num1 / $num2))
else
  division="Undefined (division by zero)"
fi
echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Division: $division"
