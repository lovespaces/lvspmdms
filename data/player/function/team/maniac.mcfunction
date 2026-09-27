# execute unless score $ManiacNum temporary < $ManiacNum settings run return 0
# scoreboard players add $ManiacNum temporary 1
# team join maniac @s
# execute as @r[team=nothing] run function player:team/maniac

execute as @a[team=nothing] run scoreboard players operation $Total roll.maniac += @s roll.maniac
execute store result storage lovespaces:mdms Temporary.RandomizeRoll int 1 run scoreboard players get $Total roll.maniac

function player:team/weight/roll with storage lovespaces:mdms Temporary
execute as @a[team=nothing] run function player:team/weight/join/maniac