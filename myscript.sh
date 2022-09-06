#!/usr/bin/bash

user=$(whoami)
date=$(date)
whereami=$(pwd)
ipaddress=$(ifconfig | grep broadcast | awk '{print $2}')

echo "Welcome $user"
sleep 1
echo "You are currently in as $user."
sleep 1 
echo "Your currently location for working directory is $whereami"
sleep 1 
echo "Today's date is $date"
sleep 1 
echo "Your IP address is $ipaddress"

    read -p "Would you like to update the file name with the current date? : (Type yY/nN)" ANSWER
    File=$(ls *.txt)
    case $ANSWER in
     [yY] | [yY][eE][sS])
    #    cat $File.txt
          echo "Updating $File"
          sleep 3
          mv $File $date-$File
          sleep 3
          echo "Successfully updated $File on to the AWS S3 bucket"
       ;;
     [nN] | [nN][oO])
      echo "Session will be terminated"
       ;;
     *)  
       echo "Please enter y/yes or n/no"
     esac