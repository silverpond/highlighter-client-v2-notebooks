#!/bin/bash

# Will preserve leading whitespace
# https://bash.cyberciti.biz/guide/$IFS
IFS=''

NB=`cat`

echo ${NB} | sed 's/https\:\/\/[^:]*:[^@]*@pypi\.silverpond\.com\.au/https\:\/\/<PYPI_USER>:<PYPI_PASSWORD>@pypi.silverpond.com.au/g' | sed 's/PYPI_USERNAME.*/PYPI_USERNAME=123\\n",/' | sed 's/PYPI_PASSWORD.*/PYPI_PASSWORD=456\\n",/'
