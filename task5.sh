#!/bin/bash
maxsize=0
maxname=""
count=0
countmax=0
for itemsize in $(ls -alR / 2>/dev/null | grep -E '^(...x)(..x)+' | awk '{print $5}')
do
  if [ $maxsize -lt $itemsize ]
  then
    maxsize=$itemsize
    countmax=$count
  fi
  let "count = count + 1"
done
count=0
echo "countmax = $countmax"
for itemname in $(ls -alR / 2>/dev/null | grep -E '^?' | awk '{print $9}')
do
  if [ $count == $countmax ]
  then
    maxname="$itemname"
  fi
  let "count = count + 1"
done
echo "maxsize = $maxsize"
echo "maxname = $maxname"
