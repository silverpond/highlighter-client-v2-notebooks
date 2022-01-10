#!/bin/bash

# Needed for opencv
apt install -y libmagic-dev

pip3 install -i https://${PYPI_USERNAME}:${PYPI_PASSWORD}@pypi.silverpond.com.au/simple highlighter-client-v2-alpha==0.6"
