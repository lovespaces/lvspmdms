execute store result score @s temporary.trade run function villager:item_check/duplicate/ {"item": "firework_star"}

execute unless score @s temporary.trade matches 1 run return 0

execute if entity @s[team=murder] run return 0

function villager:item_check/clear {"item": "firework_star", "count": 8, "name": "遠隔小型爆弾"}
