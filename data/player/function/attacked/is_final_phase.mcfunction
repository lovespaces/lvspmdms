scoreboard players operation @s timer.knife = $KnifeSeconds settings
effect give @s invisibility 3 1

execute if score $Phase stats matches 1 run return 0
scoreboard players operation @s timer.knife = $KnifeShortSeconds settings
effect clear @s invisibility
