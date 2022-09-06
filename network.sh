#!/usr/bin/bash

if [ -z "$1" ]
then
    echo "Usage: ./network.sh <Your IP>"
    exit 1
fi

printf "\n------NMAP ------\n\n" > results

echo "Running Nmap...."
nmap $1 | tail -n +5 | head -n -3 >> results 


while read line
do 
        if [[ $line == *open* ]] && [[ $line == *http* ]]
        then
        echo "Running WhatWeb...."
        whatweb $1 -v > temp
        fi
done < results

if [ -e temp ]
then
    printf "\n-----WEB -----\n\n" >> results
    cat temp >> results
    rm temp
fi

cat results 