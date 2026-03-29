execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data": {CanOpen: [0]}}}} run return run function ender_chest:roll/
tellraw @s [{"score":{"name":"@e[type=armor_stand, sort=nearest, tag=EnderChest, limit=1]", "objective":"armor_stand.ender_chest_id"}}]
execute as @e[type=armor_stand, sort=nearest, tag=EnderChest, limit=1] store result storage lovespaces:mdms Temporary.ChestID int 1 run scoreboard players get @s armor_stand.ender_chest_id
execute store success score @s temporary.enderchest run function ender_chest:auth/check with storage lovespaces:mdms Temporary
execute if score @s temporary.enderchest matches 1 run function ender_chest:roll/
