execute if score $Phase stats matches 2 run return run scoreboard players operation @s timer.knife = $KnifeShortSeconds settings

scoreboard players operation @s timer.knife = $KnifeSeconds settings
execute unless predicate item:already_invis run return run effect give @s invisibility 3 1
tag @s add HasInvisTimer
scoreboard players operation @s timer.invis = $MurderInvisLimit settings