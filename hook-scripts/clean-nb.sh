#!/bin/bash

# Will preserve leading whitespace
# https://bash.cyberciti.biz/guide/$IFS
IFS=''

NB=`cat`

REPO=`pwd`

echo ${NB} | poetry run python -m nbstripout | $REPO/hook-scripts/sanitize-highlighter-account-url.sh | $REPO/hook-scripts/sanitize-highlighter-creds.sh | $REPO/hook-scripts/sanitize-pypi-creds.sh
