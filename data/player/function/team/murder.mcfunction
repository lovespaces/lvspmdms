execute unless score $MurderNum temporary < $MurderNum settings run return 0
scoreboard players add $MurderNum temporary 1
team join murder @s
execute as @r[team=nothing] run function player:team/murder
