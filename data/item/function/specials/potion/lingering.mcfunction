scoreboard players reset @s used.lingering

execute at @s if entity @e[distance=..2, type=lingering_potion, nbt={Item:{components:{"minecraft:custom_data":{MdmsItem:1b, Blindness:1b}}}}] run return run function log:used {"item": "盲目のポーション"}
