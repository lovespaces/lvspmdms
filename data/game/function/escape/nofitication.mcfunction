#> game:escape/nofitication
#
# @within
#   game:escape/item/1
#   game:escape/item/2
#   game:escape/item/3

gamemode spectator @s
tag @s add player.Spectator
tag @s add player.Escaped

function log:done_escape

scoreboard players add $Escaped stats 1
function game:player/player_check

execute if predicate role:is_witness run function role:dead/witness