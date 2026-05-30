execute store result score @s temporary.trade run function villager:item_check/duplicate/ {"item": "hopper"}

execute unless score @s temporary.trade matches 1 run return 0

execute if entity @s[tag=nearChat] run return 0

function villager:item_check/clear {"item": "hopper", "count": 3, "name": "メガホン"}
