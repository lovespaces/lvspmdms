execute unless items entity @s container.* *[custom_data={"MdmsItem":true,"Knife":true}] run return 0

execute if entity @s[team=murder] run return 0

function villager:item_check/clear {"item": "iron_sword", "count": 4, "name": "ナイフ"}
