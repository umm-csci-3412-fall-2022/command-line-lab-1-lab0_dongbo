# !/bin/bash

echo -n "Please Enter an argument:" #Hits for take an argument
read $argument #Take an argument

tar zxvf NthPrime.tgz #Extract the .tgz
cd ./NthPrime  #Go to directory: NthPrime.tgz

gcc -o NthPrime *.c #Compiles 

./NthPrime $argument

