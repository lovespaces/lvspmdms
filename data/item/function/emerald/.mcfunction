#> item:emerald/
#
# emerald system everything
#
# @within timer

tag @s add temp

execute as @e[tag=as.ShulkerLoot, type=armor_stand, limit=1] at @s run function item:emerald/loot

tag @s remove temp