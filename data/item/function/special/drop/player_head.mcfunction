#> item:special/drop/player_head
#
# @within item:special/

scoreboard players reset @s dropped.player_head
tag @s add player.getTp

execute store result score @s temporary run function game:spectator/tp/check with entity @e[sort=nearest, type=item, limit=1] Item.components.minecraft:profile
kill @e[sort=nearest, type=item, limit=1]

tag @s remove player.getTp

execute if score @s temporary matches 0 run return run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"選択したプレイヤーは死亡しているか、もともと参加していないプレイヤーです。"}]

effect clear @s
clear @s *
gamemode spectator @s