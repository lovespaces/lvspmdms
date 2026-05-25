execute store result score @s temporary.trade run function villager:item_check/duplicate/ {"item": "soul_lantern"}

execute unless score @s temporary.trade matches 1 run return 0

execute if entity @s[tag=BadGuys] run return 0

function villager:item_check/clear {"item": "soul_lantern", "count": 5, "name": "おぼろ灯"}
