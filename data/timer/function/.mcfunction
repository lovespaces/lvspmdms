#> timer:
# 
# timer tick
# 
# @within game:

scoreboard players add $Tick timer.system 1

execute if score $Tick timer.system matches 20 run function timer:update/