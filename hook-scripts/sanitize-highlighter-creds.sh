#!/bin/bash

# Will preserve leading whitespace
# https://bash.cyberciti.biz/guide/$IFS
IFS=''

NB=`cat`

echo ${NB} | sed 's/\([a-zA-Z0-9]\{64\}\)/<HIGHLIGHTER_API_TOKEN>/g'
