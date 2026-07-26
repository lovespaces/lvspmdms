scoreboard players remove $ExplodeBy timer.bomb 1

execute unless score $ExplodeBy timer.bomb matches 0.. run return 0

scoreboard players reset $ExplodeBy timer.bomb
tag @s add BombGuy
execute as @a[tag=HasBomb] at @s run function player:attacked/bomb
tag @s remove BombGuy