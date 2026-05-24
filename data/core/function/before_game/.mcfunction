execute as @a[team=!nothing] run team join nothing @s
execute as @a if score @s be_spectator matches 1.. run function core:before_game/be_spectator
