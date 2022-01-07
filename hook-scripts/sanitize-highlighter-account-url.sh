#!/bin/bash

# Will preserve leading whitespace
# https://bash.cyberciti.biz/guide/$IFS
IFS=''

NB=`cat`

echo ${NB} | sed 's/https\:\/\/[^.]*\.highlighter\.ai/https\:\/\/<ACCOUNT_NAME>.highlighter.ai/g'
