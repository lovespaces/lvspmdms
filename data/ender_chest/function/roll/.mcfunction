execute store result score @s roll run random value 1..100
clear @s *[custom_model_data={strings:["EnderChestKey"]}]
execute at @s run playsound block.dispenser.launch master @s ~ ~ ~ 1 2

tag @s add ChestTemporary
execute if score @s roll <= @s roll.emerald run item replace entity @s enderchest.13 with emerald
execute if score @s roll <= @s roll.key run execute as @e[limit=1, type=armor_stand, tag=TempChest] at @s run function ender_chest:roll/item/ {"loot_path": "key_item"}
execute if score @s roll <= @s roll.trash run execute as @e[limit=1, type=armor_stand, tag=TempChest] at @s run function ender_chest:roll/item/ {"loot_path": "trash"}
tag @s remove ChestTemporary

tag @s add QueueKey
scoreboard players operation @s timer.key = $KeySeconds settings

function ender_chest:roll/lost/roll
