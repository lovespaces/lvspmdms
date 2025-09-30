#> item:special/drop/crystall_ball/roll
#
# crystall ball roll
#
# @within item:special/

scoreboard players reset @s ender_eye
execute if entity @s[tag=player.HasIronHorseArmor] run return 0
kill @e[type=item, sort=nearest]
clear @s ender_eye

function log:used {"item": "ポンコツな水晶玉"}
tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"水晶玉が光り輝く...!!"}]

execute store result score @s temporary run random value 0..100

execute if score @s temporary matches 0..75 run function item:special/drop/crystall_ball/failed

execute if score @s temporary matches 76..100 run function item:special/drop/crystall_ball/success