#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Usage: $0 <filename> <pattern>"
    exit 1
fi
filename=$1
pattern=$2
if [ ! -e "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi
echo "Matching lines in $filename for pattern '$pattern':"
grep "$pattern" "$filename"
