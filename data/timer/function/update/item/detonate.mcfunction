#> timer:update/item/detonate
#
# @within timer:update/

scoreboard players remove $Bomb timer.system 1
execute unless score $Bomb timer.system matches 0 run return 0

scoreboard players reset $Bomb timer.system
execute as @a[tag=player.Bombed] at @s run function item:special/bomb/explode