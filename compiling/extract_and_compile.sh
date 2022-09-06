# !/bin/bash

# Take an argument
primeIndex = "$argument"

# Extract the NthPrime.tgz
tar zxvf NthPrime.tgz

# Go to directory: NthPrime
cd ./NthPrime || exit

# Compiles the .c files
gcc -o NthPrime *.c #Compiles 

# Run the C Program
./NthPrime "$primeIndex"

