#!/bin/python3
from pathlib import Path
import json

def ls(file,file_list=[]):
    target = Path(file)
    list = target.iterdir()

    for path in list:
        if path.is_dir():
            ls(path,file_list)
        else:
            file_list.append(path)

    return file_list

list = ls('data')

for path in list:
    if path.name.endswith('.json'):
        try:
            data = json.loads(path.read_text())
            path.write_text(json.dumps(data,indent=2))
        except:
            print('Found error in json file: ')
            print(path)