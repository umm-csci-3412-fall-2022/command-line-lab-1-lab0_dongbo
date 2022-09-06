# !/bin/bash

# Create temp directory
tempDir=$(mktemp -d)

# Extracts file to temp directory
tar zxf "$1" --directory "$tempDir"

# Move to extracted directory
arguNum=$(basename "$1" .tgz)
cd "$tempDir/$arguNum" || exit

# Delete all files with "DELETE ME!"
grep -l 'DELETE ME!' ./* | xargs rm -f

# Create new clean archive
tar czf "$OLDPWD"/cleaned_"$1" -C ./.. "$arguNum"
