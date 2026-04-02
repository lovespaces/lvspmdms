scoreboard players remove @s timer.knife 1

execute unless score @s timer.knife matches ..-1 run return 0

tag @s remove NoKnife

execute if score $Phase stats matches 1 run return run function timer:knife/normal

execute if score $Phase stats matches 2 run return run function timer:knife/special
