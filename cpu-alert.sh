#!/bin/bash 

CPU=$(sar 1 5 | grep "Average" | sed 's/^.* //') 
CPU=$( printf "%.0f" $CPU ) 
if [ "$CPU" -lt 20 ] 
then echo "CPU usage is high!" | sendmail viktor.milev@gotoadmins.com
fi
