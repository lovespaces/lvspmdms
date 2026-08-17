tag @s remove CantUseHopper

execute if items entity @s container.* hopper run return run tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text": "[メガホン] ", "color":"yellow"}, {"text":"が使えるようになった", "color":"white"}]
execute if items entity @s weapon.offhand hopper run return run tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text": "[メガホン] ", "color":"yellow"}, {"text":"が使えるようになった", "color":"white"}]
