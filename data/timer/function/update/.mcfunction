#> timer:update/
#
# update some timer things
# 
# @within timer:

scoreboard players reset $Tick timer.system
scoreboard players remove $Seconds timer.system 1

execute as @a[tag=!player.Spectator] run function timer:update/player/check

execute if score $Phase stats matches 0 run return run function timer:update/phase/1
execute if score $Phase stats matches 3 run return run function timer:update/phase/3

execute if score $Switch timer.system matches 0.. run function timer:update/item/give_switch
execute if score $Primed timer.system matches 0.. run function timer:update/item/detonate