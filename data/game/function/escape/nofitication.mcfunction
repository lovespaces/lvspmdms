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

scoreboard players remove $Players stats 1
scoreboard players add $Escaped stats 1
execute if score $Players stats matches 2 run function item:escape/detective/emergency_pick
execute if score $Players stats matches ..1 run function game:win/check

execute if predicate role:is_witness run function role:dead/witness