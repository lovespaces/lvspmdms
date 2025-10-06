#> game:player/player_check
#
# @within
#   game:escape/nofitication
#   game:player/dead

scoreboard players remove $Players stats 1

execute if score $Players stats matches 2 run function item:escape/detective/emergency_pick
execute if score $Players stats matches ..1 run function game:win/