#!/bin/bash

PYPROJECT=`"${BASH_SOURCE%/*}/pyproject.toml"`
HCP_VERSION=`grep 'highlighter-client-v2-alpha' pyproject.toml | grep -o '[\"].*[\"]' | cut -d '"' -f2`

echo "Installing highlighter-client-v2-alpha${HCP_VERSION}"

# Needed for opencv
apt install -y libmagic-dev

pip3 install -i https://${PYPI_USERNAME}:${PYPI_PASSWORD}@pypi.silverpond.com.au/simple highlighter-client-v2-alpha${HCP_VERSION}
