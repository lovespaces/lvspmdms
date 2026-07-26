scoreboard players reset @s dropped.button
execute if entity @s[tag=player.HasIronHorseArmor] run return 0
execute unless score $ExplodeBy timer.bomb = $ExplodeBy timer.bomb run return run function item:specials/bomb/explode/failed
kill @e[type=item, sort=nearest, limit=1]
clear @s redstone_torch

function log:used {"item": "爆弾のスイッチ"}
scoreboard players operation $ExplodeBy timer.bomb = $BombTimer settings
