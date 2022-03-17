- **export-submissions.ipynb**: <a href="https://colab.research.google.com/github/silverpond/highlighter-client-v2-notebooks/blob/main/notebooks/export-submissions.ipynb" target="_blank"><img src="https://camo.githubusercontent.com/52feade06f2fecbf006889a904d221e6a730c194/68747470733a2f2f636f6c61622e72657365617263682e676f6f676c652e636f6d2f6173736574732f636f6c61622d62616467652e737667" alt="Open In Colab" data-canonical-src="https://colab.research.google.com/assets/colab-badge.svg"></a>
- **train-mmdet.ipynb**: <a href="https://colab.research.google.com/github/silverpond/highlighter-client-v2-notebooks/blob/main/notebooks/train-mmdet.ipynb" target="_blank"><img src="https://camo.githubusercontent.com/52feade06f2fecbf006889a904d221e6a730c194/68747470733a2f2f636f6c61622e72657365617263682e676f6f676c652e636f6d2f6173736574732f636f6c61622d62616467652e737667" alt="Open In Colab" data-canonical-src="https://colab.research.google.com/assets/colab-badge.svg"></a>
- **infer-mmdet-clean.ipynb**: <a href="https://colab.research.google.com/github/silverpond/highlighter-client-v2-notebooks/blob/main/notebooks/infer-mmdet-clean.ipynb" target="_blank"><img src="https://camo.githubusercontent.com/52feade06f2fecbf006889a904d221e6a730c194/68747470733a2f2f636f6c61622e72657365617263682e676f6f676c652e636f6d2f6173736574732f636f6c61622d62616467652e737667" alt="Open In Colab" data-canonical-src="https://colab.research.google.com/assets/colab-badge.svg"></a>

# Development


### Setup a virtualenv
At time of writing: python = 3.7.9
```Bash
python3 -m venv env
source env/bin/activate
```

---

### poetry setup
```Bash
pip install --upgrade pip
pip install poetry poethepoet

# get pypi credentials from silverpond team
export PYPI_USERNAME=<username>
export PYPI_PASSWORD=<password>
```

## Install deps
```Bash
poe install-torch
poe install-hcp
poe install-mmcv-full
poe install-onnx
poe install-mmdet
```

---

## Run the notebooks!

```Bash
jupyter lab --no-browser --allow-root --ip 0.0.0.0 --port 6606 .
```

