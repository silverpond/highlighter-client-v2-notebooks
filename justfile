init:
  poetry install
  poetry run poe force-cuda11

git-filters:
  git config --local filter.clean-nb.clean `git rev-parse --show-toplevel`/hook-scripts/clean-nb.sh
  git config --local filter.clean-nb.smudge cat
  git config --local diff.ipynb.textconv "poetry run python -m nbstripout -t"

jupyter:
  poetry run jupyter lab --no-browser --allow-root --ip 0.0.0.0 --port 8901 .

clean:
  rm requirements.txt
  rm -r data
