execute store result score @s roll run random value 1..100
clear @s tripwire_hook
execute at @s run playsound block.dispenser.launch master @s ~ ~ ~ 1 2

tag @s add QueueKey
scoreboard players operation @s timer.key = $KeySeconds settings

function ender_chest:roll/lost/roll

execute if score @s roll <= @s roll.emerald run return run item replace entity @s enderchest.13 with emerald
execute if score @s roll <= @s roll.key run return run function ender_chest:roll/item/ {"loot_path": "key_item"}
execute if score @s roll <= @s roll.trash run return run function ender_chest:roll/item/ {"loot_path": "trash"}
