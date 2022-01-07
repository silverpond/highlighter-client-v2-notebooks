#!/bin/bash

# Needed for mmcv
apt install -y libmagic-dev

# Pip install, order matters I think
# at least install mmdet last
pip3 install torch==1.10.1+cu113 torchvision==0.11.2+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html

pip3 install -i https://${PYPI_USERNAME}:${PYPI_PASSWORD}@pypi.silverpond.com.au/simple highlighter-client-v2-alpha==0.6

# pip3 install mmcv-full==1.3.17 -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.10.0/index.html

pip3 install onnx onnxruntime==1.8.1

git clone --depth 1 --branch v2.18.0 https://github.com/open-mmlab/mmdetection.git
(cd mmdetection; pip install .)
