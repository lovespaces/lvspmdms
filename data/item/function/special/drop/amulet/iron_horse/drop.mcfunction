#> item:special/drop/amulet/iron_horse/drop
#
# ironhorse drop
#
# @within item:special/

kill @e[type=item, sort=nearest, limit=1]

scoreboard players reset @s dropped.amulet
clear @s iron_horse_armor
execute if entity @s[tag=player.HasIronHorseArmor] run return run tellraw @s [{"color":"red", "text": "[ラブスペ人狼] "}, {"text":"[守護のお守り]", "color":"yellow"}, {"text":" は現在使用中です！", "color":"white"}]

tag @s add player.HasIronHorseArmor

playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.25

function log:used {"item": "守護のお守り"}
scoreboard players set @s timer.iron_horse_armor 10