tag @s remove CantUseHopper

execute if items entity @s container.* hopper run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text": "[メガホン] ", "color":"yellow"}, {"text":"が使えるようになった", "color":"white"}]
execute if items entity @s weapon.offhand hopper run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text": "[メガホン] ", "color":"yellow"}, {"text":"が使えるようになった", "color":"white"}]
