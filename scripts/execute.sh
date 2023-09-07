#!/bin/bash
# Get the JSON data from the URL && parse it.
json_data=$(curl -s "$1")

# Get the images field and first image
image=$(echo "$json_data" | jq '.images[0]')

# Open the existing JSON file and append the images field into the file
json_file=$(readlink -f "$2")
echo "$image," >> "$json_file"
