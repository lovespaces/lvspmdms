#> item:emerald/
#
# emerald system everything
#
# @within timer

tag @s add game.Temporary

function item:emerald/roll

execute if score @s item.emerald matches ..35 run function item:emerald/loot/emerald
execute if score @s item.emerald matches 36..70 run function item:emerald/loot/keyitem
execute if score @s item.emerald matches 71..100 run function item:emerald/loot/trash

execute as @e[tag=as.ShulkerLoot, type=armor_stand, limit=1] at @s run function item:emerald/loot

tag @s remove game.Temporary