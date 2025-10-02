#> game:win/check
#
# @within game:player/dead

scoreboard players set $Players temporary 2
scoreboard players operation $AllInnocent temporary = $AllPlayers stats
scoreboard players remove $AllInnocent temporary 1
scoreboard players operation $AllInnocent stats /= $Players temporary

execute if score $Mistake stats = $AllInnocent temporary run return run function game:win/special/all_mistake

execute if score $Mistake stats >= $AllInnocent stats run return run function game:win/special/mistake

execute if score $Escaped stats matches 0 run return run function game:win/special/all_killed

execute if score $AllInnocent stats <= $Escaped stats run return run function game:win/innocent

execute if score $AllInnocent stats > $Escaped stats run function game:win/murder