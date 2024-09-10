#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: ./wrap_contents.sh <content_file> <specifier> <output_file>"
    exit 1
fi

content_file=$1
specifier=$2
output_file=$3

header_file="${specifier}_header.html"
footer_file="${specifier}_footer.html"

# Concatenate the header, content, and footer files
cat "$header_file" "$content_file" "$footer_file" > "$output_file"