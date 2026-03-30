execute unless items entity @s container.* firework_star run return 0

execute if entity @s[team=murder] run return 0

function villager:item_check/clear {"item": "firework_star", "count": 8, "name": "遠隔小型爆弾"}
