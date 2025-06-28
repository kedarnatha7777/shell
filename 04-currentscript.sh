#!/bin/bash 

wishes="good morning for the current script"

echo "printing  before  calling the another script wishes:${wishes}"
echo "pid is of current shell script  $$"

./05-another-script.sh 

echo "printing after calling the another script wishes: ${wishes}"

