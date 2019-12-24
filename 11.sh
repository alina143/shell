#!/bin/bash

(ls -alR /  2>/dev/null | grep -E "^...s" | while read line
do
    echo $line | awk '{print $3;}'
done) | sort -u
