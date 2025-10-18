#> item:special/drop/crystall_ball/roll
#
# crystall ball roll
#
# @within item:special/

kill @e[type=item, sort=nearest, limit=1]

scoreboard players reset @s dropped.crystall_ball
execute if entity @s[tag=player.HasIronHorseArmor] run return 0
kill @e[type=item, sort=nearest]
clear @s ender_eye

function log:used {"item": "ポンコツな水晶玉"}
tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"水晶玉が光り輝く...!!"}]

execute store result score @s temporary run random value 0..100

execute if score @s temporary >= $CrystallBall game.settings run return run function item:special/drop/crystall_ball/failed

function item:special/drop/crystall_ball/success