#> timer:update/item/give_switch
#
# @within timer:update/

scoreboard players remove $Switch timer.system 1
execute unless score $Switch timer.system matches 0 run return 0

scoreboard players reset $Switch timer.system
execute as @a[team=murder] at @s run function item:special/bomb/switch