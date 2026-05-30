scoreboard players reset @s leave_game

execute if score @s is_playing matches 1 run return run function game:leave_game/fraud

execute if score @s is_playing matches 2.. run return 0
function game:leave_game/not_joining
