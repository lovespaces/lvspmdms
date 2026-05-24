scoreboard players reset @s be_spectator
scoreboard players enable @s be_spectator
execute if entity @s[tag=Spectator] run return run function core:before_game/spectator/delete
execute unless entity @s[tag=Spectator] run return run function core:before_game/spectator/add
