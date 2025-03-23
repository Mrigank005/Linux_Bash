#!/bin/bash
sort_ascending() {
    echo "$@" | tr ' ' '\n' | sort -n | tr '\n' ' '
}
sort_descending() {
    echo "$@" | tr ' ' '\n' | sort -nr | tr '\n' ' '
}
read -p "Enter numbers separated by spaces: " input_numbers
read -p "Sort in ascending (a) or descending (d) order? " sort_order
if [ -n "$input_numbers" ]; then
    case "$sort_order" in
        a|A)
            sorted_numbers=$(sort_ascending $input_numbers)
            echo "Sorted in ascending order: $sorted_numbers"
            ;;
        d|D)
            sorted_numbers=$(sort_descending $input_numbers)
            echo "Sorted in descending order: $sorted_numbers"
            ;;
        *)
            echo "Invalid sorting order. Please enter 'a' for ascending or 'd' for descending."
            ;;
    esac
else
    echo "No input provided. Please enter numbers separated by spaces."
fi
