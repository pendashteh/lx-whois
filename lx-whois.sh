#!/bin/bash

domain=$1

whois $domain
read -p "Record as Available [y] / Not available [n] / Do not record [Enter]? " action

status="INTERNAL-ERROR"
if [ "$action" = "y"  ]
  then
  status="AVAILABLE"
elif [ "$action" = "n" ]
  then
  status="TAKEN"
else
  exit
fi
logfile=$HOME"/.lx-whois.log"
echo $(date +"%Y-%m-%d %H %M %S") $domain $status >> $logfile
echo "Record written in "$logfile
