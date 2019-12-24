#!/bin/bash

myip="10.4.16."
ip=""
for (( i=1; i<255; i++ ))
do
    ip=$myip$i
    if (ping -w 1 -c 2 $ip | grep -E -q "1 received")
    then
        echo $ip" is alive"
    else
       echo $ip" is dead" 
    fi
done

