# !/bin/bash

# Create temp directory
tempDir=$(mktemp -d)

# Extracts file to temp directory
tar zxvf "$num" --directory "$tempDir"

# Move to extracted directory
argument=$(basename "$num" .tgz)
cd "$tempDir/$argument" || exit

# Delete all files with "DELETE ME!"
grep -l 'DELETE ME!' ./* | xrags rm -f

# Create new clean archive
tar czf "$oldArch"/cleaned_"$num" -C ./.. "$argument"
