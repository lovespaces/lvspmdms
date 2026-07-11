execute if score $Phase stats matches 0.. run function game:
execute unless score $Phase stats = $Phase stats run function core:before_game/
execute as @a[scores={first_join=1}] at @s run function core:before_game/first_join