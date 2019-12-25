#!/bin/bash
du -a 2>/dev/null $1 | while read len name; do if [[ -x "$name" && ! -d "$name" ]]; then echo $len "$name"; fi; done | sort -nr | head -n 1 
