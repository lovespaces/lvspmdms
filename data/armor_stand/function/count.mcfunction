scoreboard players add $Total armor_stand.ender_chest_id 1
tag @s add ECAdded
scoreboard players operation @s armor_stand.ender_chest_id = $Total armor_stand.ender_chest_id
execute as @e[type=armor_stand, tag=EnderChest, sort=random, limit=1, tag=!ECAdded] run function armor_stand:count
