#!/bin/bash

# Check if URL is provided as an argument
if [ -z "$1" ]; then
    echo "Please provide a URL as an argument."
    exit 1
fi

# Store the URL provided as an argument
url=$1

# Send GET request using curl and store the response body and status code
response=$(curl -s -w "%{http_code}" -X GET "$url")

# Extract the status code and response body
status_code=$(echo "$response" | tail -n 1)
body=$(echo "$response" | head -n -1)

# Display the body of the response only if the status code is 200
if [ "$status_code" -eq 200 ]; then
    echo "$body"
fi

