execute at @s if predicate player:looking_at if entity @e[tag=SpecialItems, sort=nearest, distance=..4] run function log:tips/purchase
