#!/bin/bash

for user in $( cat /etc/passwd | grep -Eo '^[^:]+' ) ; do
	homedir="$( cat /etc/passwd | grep -E "^$user:" | grep -Eo '[^:]+:[^:]+$' | grep -Eo '^[^:]+' )"
	find "$homedir" -type f -perm /111 -print -quit > /dev/null 2>&1
	if [ $? -eq 0 ] ; then
		echo "$user"
	fi
done
