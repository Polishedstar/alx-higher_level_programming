#!/bin/bash

# Check if URL is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a URL as an argument."
    exit 1
fi

# Store the URL provided as an argument
url=$1

# Send request using curl and store the response body
response=$(curl -s -w "%{size_download}" -o /dev/null "$url")

# Display the size of the response body in bytes
echo "$response bytes"
