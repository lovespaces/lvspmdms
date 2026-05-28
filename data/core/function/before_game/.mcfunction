execute as @e[type=item, limit=1] at @s run function admin:
execute as @a[team=!nothing] run team join nothing @s
execute as @a if score @s be_spectator matches 1.. run function core:before_game/be_spectator
