execute store result score @s temporary.trade run function villager:item_check/duplicate/ {"item": "bow"}

execute unless score @s temporary.trade matches 1 run return 0

execute if entity @s[tag=CanBuyBow] run return 0

execute if entity @s[team=detective] run tag @s remove adv.det.nothing

execute if entity @s[team=murder] run tag @s add adv.next_detective

function villager:item_check/clear {"item": "bow", "count": 3, "name": "探偵の弓"}
