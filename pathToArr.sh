#!/bin/bash
arr=($(echo "$PATH" | tr ':' ' '))
echo ${arr[@]}
