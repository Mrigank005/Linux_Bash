#!/bin/bash
echo "Please enter your age:"
read age
if [ "$age" -ge 18 ]; then
  echo "You are eligible to vote."
else
  echo "You are not yet eligible to vote."
fi
