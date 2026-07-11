execute as @a at @s run function player:
execute if score $Phase stats matches 0.. run function game:
execute unless score $Phase stats = $Phase stats run function core:before_game/