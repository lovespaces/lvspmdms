scoreboard players add @s sneaking 1
particle minecraft:dust{color:[1.0,0.0,0.0],scale:1} ~ ~1 ~ 0 0 0 0 5 force

execute if score @s sneaking >= $ManiacBowCharging settings run return run function player:sneak/maniac/can_shoot

title @s times 0s 5s 1s
title @s actionbar [{"score":{"name":"@s", "objective":"sneaking"}}, " / ", {"score":{"name":"$ManiacBowCharging", "objective":"settings"}}]
