#!/bin/bash
echo "$PATH" | tr ':' '\n' | while read name; do ls -d $name/* ; done | while read name; do if [ ! -x $name ]; then ls -l $name; fi; done
