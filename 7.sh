#!/bin/bash
echo $ls -laR $1 | grep "^-" | wc
