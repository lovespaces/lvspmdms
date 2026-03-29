scoreboard players reset @s used.splash

execute at @s if entity @e[distance=..2, type=splash_potion, nbt={Item:{components:{"minecraft:custom_data":{MdmsItem:1b, Slowness:1b}}}}] run return run function log:used {"item": "鈍化のポーション"}
