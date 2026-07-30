from pathlib import Path
import json

dir = Path('./')
vegetal_list = []
surface_list = []

for child in dir.iterdir():
    if child.name.endswith('.json'):
        if child.name.startswith("vegetal"):
            vegetal_list.append('acovia:' + child.name.removesuffix('.json'))
        if child.name.startswith("surface"):
            surface_list.append('acovia:' + child.name.removesuffix('.json'))

target = Path('../biome/ancient_forest.json')
src_data = json.loads(target.read_text())
src_data['features'][9] = vegetal_list
src_data['features'][5] = vegetal_list
target.write_text(json.dumps(src_data,indent=2))