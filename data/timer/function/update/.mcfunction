#> timer:update/
#
# update some timer things
# 
# @within timer:

scoreboard players reset $Tick timer.system
scoreboard players remove $Seconds timer.system 1

execute as @a[tag=!player.Spectator] if score @s timer.system matches 0.. run function mdms:timer/update/player/check

execute as @a[tag=!player.Spectator] if score @s timer.iron_horse_armor matches 0.. run function mdms:timer/update/iron_horse

execute if score $Phase stats matches 0 run return run function mdms:timer/update/1

execute if score $Phase stats matches 3 run return run function mdms:timer/update/3

execute if score $Phase stats matches 1.. if score $Seconds timer.system matches ..0 as @a[tag=!player.Spectator, tag=!player.AFK] run function mdms:item/emeralds/_

execute if score $Switch timer.system matches 0.. run function mdms:timer/update/bomb/update

execute if score $Bomb timer.system matches 0.. run function mdms:timer/update/bomb/bomb_update