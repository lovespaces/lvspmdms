execute as @e[type=item, limit=1] at @s run function admin:
execute as @a at @s if score @s leave_game matches 1.. run function core:before_game/join_handler
execute as @a if score @s be_spectator matches 1.. run function core:before_game/be_spectator
