import json
from pathlib import Path

def check(nb):

    for i, cell in enumerate(nb['cells']):
        for line in cell['source']:
            if line.startswith("HL_WEB_GRAPHQL_API_TOKEN"):
                assert '...' in line, f"Found token in notebook {path} cell {i}: '{line}'. Use '...' as a placeholder"

            if line.startswith("HL_WEB_GRAPHQL_ENDPOINT"):
                assert "<account-name>" in line, f"Found real account name in notebook {path} cell {i}: '{line}'. Use 'https://<aaccount-name>.highlighter.ai/graphql' as a placeholder"

            if "silverpond.com.au/simple" in line:
                assert "<PYPI_USERNAME>:<PYPI_PASSWORD>" in line, f"Found read pypi credentials in notebook {path} cell {i}: '{line}'. Use https://<PYPI_USERNAME>:<PYPI_PASSWORD>@pypi.silverpond.com.au/simple as a placeholder"


def clear_cell_outputs(cells):
   cleared = []
   for c in cells:
       c["outputs"] = []
       c["execution_count"] = None
       cleared.append(c)
   return cleared



if __name__ == "__main__":
    import sys
    path = Path(sys.argv[1])
    notebooks = Path('.').glob("*.ipynb")
    with open(path, 'r') as f:
        nb = json.load(f)

    check(nb)
    nb["cells"] = clear_cell_outputs(nb["cells"])

    with open(path, 'w') as f:
        json.dump(nb, f, indent=2)
