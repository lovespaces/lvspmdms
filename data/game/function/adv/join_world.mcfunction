#> game:adv/join_world
#
# @within advancement game:join_world

advancement revoke @s only game:join_world

execute unless score $Phase stats matches 0.. run return 0

execute unless score @s escape.one matches 0.. run return run function game:spectator/

execute at @s run function game:player/dead