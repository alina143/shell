#!/bin/bash

for user in $( cat /etc/passwd | grep -Eo '^[^:]+' ) ; do
	homedir="$( cat /etc/passwd | grep -E "^$user:" | grep -Eo '[^:]+:[^:]+$' | grep -Eo '^[^:]+' )"
	find "$homedir" -type f -perm /111 -print -quit 2> /dev/null | grep / > /dev/null
	if [ $? -eq 0 ] ; then
		echo "$user"
	fi
done
