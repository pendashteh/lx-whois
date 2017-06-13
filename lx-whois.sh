#!/bin/bash

[ -n "$1" ] && domain=$1

logfile=$HOME"/.lx-whois.log"

if [ "$domain" = "" ]
  then
  view $logfile
  exit
fi

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
  echo "No record was written"
  exit
fi
logline="$(date +"%Y-%m-%d %H:%M:%S") $domain $status"
echo $logline >> $logfile
echo $logline" >> "$logfile
