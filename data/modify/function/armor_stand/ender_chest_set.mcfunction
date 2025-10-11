#> modify:armor_stand/ender_chest_set
#
# @public

scoreboard players add $EnderChestID key.number 1
scoreboard players operation @s key.number = $EnderChestID key.number
tag @s add as.EnderChestAdded

execute as @e[type=armor_stand, tag=as.EnderChest, tag=!as.EnderChestAdded,sort=random, limit=1] run function modify:armor_stand/ender_chest_set