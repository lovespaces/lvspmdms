execute store result score @s temporary.trade run function villager:item_check/duplicate/ {"item": 'iron_sword[custom_data={"MdmsItem": true, "Knife": true}]'}

execute unless score @s temporary.trade matches 1 run return 0

execute if entity @s[team=murder] run return 0

function villager:item_check/clear {"item": "iron_sword", "count": 4, "name": "ナイフ"}
