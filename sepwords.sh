#!/bin/bash
read -p "Enter a sentence: " sentence
IFS=" " read -ra words <<< "$sentence"
echo "Individual words:"
for word in "${words[@]}"; do
    echo "$word"
done
