from pathlib import Path
import json
dir = Path('./')
feature_list = []
for child in dir.iterdir():
    if child.name.endswith('.json'):
        feature_list.append('acovia:' + child.name.removesuffix('.json'))
target = Path('../biome/ancient_forest.json')
src_data = json.loads(target.read_text())
src_data['features'][9] = feature_list
target.write_text(json.dumps(src_data,indent=2))