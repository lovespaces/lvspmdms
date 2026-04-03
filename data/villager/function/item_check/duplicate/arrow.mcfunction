execute store result score @s temporary.trade run function villager:item_check/duplicate/ {"item": "arrow"}

execute unless score @s temporary.trade matches 1 run return 0

execute if entity @s[tag=CanBuyBow] run return run function villager:item_check/arrow/

function villager:item_check/clear {"item": "arrow", "count": 2, "name": "矢"}

execute if entity @s[team=maniac] run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"狂人は探偵が生きている限り、 ", "color":"white"}, {"text":"[弓]", "color":"yellow"}, {"text":" の購入はできますが、 ", "color":"white"}, {"text":"[矢]", "color":"yellow"}, {"text":" の購入はできません。", "color":"white"}]
