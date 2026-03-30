scoreboard players reset * armor_stand.ender_chest_id
scoreboard players set $Total armor_stand.ender_chest_id 0
execute as @e[type=armor_stand, tag=EnderChest, sort=random, limit=1] run function armor_stand:count
