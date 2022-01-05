init:
  just init-hooks
  poetry install

init-hooks:
  cp hook-scripts/pre-commit .git/hooks

jupyter:
  poetry run jupyter lab --no-browser --allow-root --collaborative --ip 0.0.0.0 --port 8901 .

clean:
  rm requirements.txt
  rm -r data
