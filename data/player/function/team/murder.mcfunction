# execute unless score $MurderNum temporary < $MurderNum settings run return 0
# scoreboard players add $MurderNum temporary 1
# team join murder @s
# execute as @r[team=nothing] run function player:team/murder

execute as @a[team=nothing] run scoreboard players operation $Total roll.murder += @s roll.murder
execute store result storage lovespaces:mdms Temporary.RandomizeRoll int 1 run scoreboard players get $Total roll.murder

function player:team/weight/roll with storage lovespaces:mdms Temporary
execute as @a[team=nothing] run function player:team/weight/join/murder