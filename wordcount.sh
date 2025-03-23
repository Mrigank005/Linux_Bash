#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
filename=$1
if [ ! -e "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi
lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
characters=$(wc -c < "$filename")
echo "File: $filename"
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $characters"
