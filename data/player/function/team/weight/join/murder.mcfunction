execute unless score $MurderNum temporary < $MurderNum settings run return 0
scoreboard players operation $TempTotal roll.murder += @s roll.murder
execute unless score $TempTotal roll.murder >= $RandomizeRoll temporary run return 0
team join murder @s
tag @s add Murder
tag @s add BadGuys
scoreboard players add $MurderNum temporary 1