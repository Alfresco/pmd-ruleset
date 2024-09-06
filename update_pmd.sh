#!/bin/bash
set -e

# Check if at least one tag has been provided, or if the user is asking for help.
if [[ $# -eq 0 || $1 == "-h" || $1 == "--help" ]]; then
    if [[ $# -eq 0 ]]; then
        echo "Error: At least one tag is required."
    fi
    echo "Usage: update_pmd.sh <tag1> <tag2> ... <tagN>"
    exit 1
fi

# Get the command line arguments.
echo $@

# Get the current date.
today=$(date +"%Y%m%d")

# Loop through all tags provided
for tag in "$@"
do
    git tag "${tag}_${today}"
    git push origin "${tag}_${today}"
done

# Print the number of tags created.
echo "Created ${#@} tags."
