execute unless score $ManiacNum temporary < $ManiacNum settings run return 0
scoreboard players add $ManiacNum temporary 1
team join maniac @s
execute as @r[team=nothing] run function player:team/maniac
