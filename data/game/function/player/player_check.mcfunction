#> game:player/player_check
#
# @within
#   game:escape/nofitication
#   game:player/dead

execute store result score $Players stats if entity @a[tag=!player.Dead, tag=!player.Spectator]

execute if score $Players stats matches 2 run function item:escape/detective/emergency_pick
execute if score $Players stats matches ..1 run function game:win/