#!/bin/bash
du -a 2>/dev/null $1 | while read len name; do if [ -f "$name" ]; then echo $len "$name"; fi; done | sort -nr | head -n 1 | while read len name; do ls -lh "$name"; done
