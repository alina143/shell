#!/bin/bash
echo "$PATH" | tr ':' '\n' | while read name; do ls -ld "$name"/* ; done | awk '{print $5 " " $9}'| while read len name; do if [ -f "$name" ]; then echo $len "$name"; fi; done | sort -nr | head -n 1 | while read len name; do ls -lh "$name"; done
