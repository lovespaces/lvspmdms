execute at @s if predicate player:is_sneaking if entity @e[tag=FirstSecret, distance=..1, type=armor_stand, limit=1] run return run function game_advancements:secret/1
scoreboard players reset @s adv.secret1
execute at @s if predicate player:is_sneaking if entity @e[tag=SecondSecret, distance=..1, type=armor_stand, limit=1] run return run function game_advancements:secret/2
scoreboard players reset @s adv.secret2
execute at @s if predicate player:is_sneaking if entity @e[tag=ThirdSecret, distance=..1, type=armor_stand, limit=1] run return run function game_advancements:secret/3
scoreboard players reset @s adv.secret3
