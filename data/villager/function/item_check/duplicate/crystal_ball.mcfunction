execute unless items entity @s container.* soul_lantern run return 0

execute unless entity @s[team=!innocent, team=!detective, team=!witness] run return 0

function villager:item_check/clear {"item": "soul_lantern", "count": 5, "name": "おぼろ灯"}
