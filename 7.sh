#!/bin/bash
ls -laR $1 | grep "^-" | wc -l
