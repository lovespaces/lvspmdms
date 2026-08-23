scoreboard players remove @s timer.invis 1

execute unless score @s timer.invis matches ..0 run return 0

tag @s remove HasInvisTimer
scoreboard players reset @s timer.invis
effect clear @s invisibility