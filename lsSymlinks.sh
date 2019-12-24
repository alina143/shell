#!/bin/bash
echo "$PATH" | tr ':' '\n' | while read name; do ls -ld "$name"/* ; done | awk '{print $5 " " $9}'| while read len name; do if [ -L "$name" ]; then echo $len "$name"; fi; done | while read len name; do ls -lh "$name"; done
