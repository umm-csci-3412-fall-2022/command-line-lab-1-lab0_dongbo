# !/bin/bash

# Take an argument
arguIndex="$1"

# Extract the NthPrime.tgz
tar zxf NthPrime.tgz

# Go to directory: NthPrime
cd ./NthPrime || exit

# Compiles the .c files
gcc -o NthPrime *.c 

# Run the C Program
./NthPrime "$arguIndex"

