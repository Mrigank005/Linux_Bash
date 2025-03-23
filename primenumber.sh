#!/bin/bash
echo "Please enter a number:"
read num
is_prime() {
  local n=$1
  if [ $n -le 1 ]; then
    echo "Not a prime number."
  elif [ $n -le 3 ]; then
    echo "Prime number."
  elif [ $((n % 2)) -eq 0 ] || [ $((n % 3)) -eq 0 ]; then
    echo "Not a prime number."
  else
    local i=5
    while [ $((i * i)) -le $n ]; do
      if [ $((n % i)) -eq 0 ] || [ $((n % (i + 2))) -eq 0 ]; then
        echo "Not a prime number."
        return
      fi
      i=$((i + 6))
    done
    echo "Prime number."
  fi
}
is_prime "$num"
