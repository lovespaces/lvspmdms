scoreboard players remove @s timer.totem 1

execute unless score @s timer.totem matches ..0 run return 0

clear @s totem_of_undying
effect clear @s fire_resistance
effect clear @s regeneration
tag @s remove UsedTotem
