# clear all vanilla recipes

import os

for filename in os.scandir():
    if filename.is_file() and filename.path != '.\clear.py':
        print (filename.path)
        with open(filename.path,'w') as file:
            file.write('''{
    "type": "minecraft:crafting_shaped",
    "key": {
        "#": {
            "item": "minecraft:air"
        }
    },
    "pattern": [
        "#"
    ],
    "result": {
        "item": "minecraft:barrier"
    }
}''')

print ('finished')