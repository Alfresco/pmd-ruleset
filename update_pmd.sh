#!/bin/bash
set -e

# Get the command line arguments.
echo $@

# Get the current date.
today=$(date +"%Y%m%d")

# Loop through all tags provided
for tag in "$@"
do
    git tag "${tag}_${today}"
    git push origin "$tag_$today"
done

# Print the number of tags created.
echo "Created ${#@} tags."
