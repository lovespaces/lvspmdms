execute if entity @s[tag=IronHorse] run effect clear

execute if predicate player:is_sprinting run tag @s remove adv.not_running

execute at @s if predicate player:looking_at if entity @e[tag=SpecialItems, sort=nearest, distance=..4] run function log:tips/purchase

execute at @s if predicate player:is_sneaking if entity @e[tag=Escape, distance=..2, type=armor_stand, limit=1] run return run function player:sneak/
execute at @s if predicate player:is_sneaking if entity @s[team=maniac] if items entity @s weapon.* bow run return run function player:sneak/maniac/
scoreboard players reset @s sneaking

execute at @s unless predicate player:is_sneaking if entity @s[team=maniac, tag=CanShootPlayers] run function player:sneak/maniac/cancel

execute at @s run function game_advancements:secret/
