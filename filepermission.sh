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
if [ -r "$filename" ]; then
    echo "$filename is readable."
else
    echo "$filename is not readable."
fi

if [ -w "$filename" ]; then
    echo "$filename is writable."
else
    echo "$filename is not writable."
fi

if [ -x "$filename" ]; then
    echo "$filename is executable."
else
    echo "$filename is not executable."
fi
