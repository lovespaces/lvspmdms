execute at @s if predicate player:looking_at if entity @e[tag=SpecialItems, sort=nearest, distance=..4] run function log:tips/purchase

execute at @s if predicate player:is_sneaking if entity @e[tag=Escape, distance=..2, type=armor_stand, limit=1] run return run scoreboard players add @s sneaking 1
scoreboard players reset @s sneaking
