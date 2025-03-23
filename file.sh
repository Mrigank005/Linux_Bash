#!/bin/bash
file_exists() {
    local filename=$1

    if [ -e "$filename" ]; then
        echo "true"
    else
        echo "false"
    fi
}
read -p "Enter a filename: " filename
if [ "$(file_exists "$filename")" == "true" ]; then
    echo "Content of $filename:"
    cat "$filename"
else
    read -p "$filename does not exist. Do you want to create it? (y/n): " create_file
    if [ "$create_file" == "y" ] || [ "$create_file" == "Y" ]; then
        touch "$filename"
        echo "$filename created successfully."
    else
        echo "File not created. Exiting script."
    fi
fi
