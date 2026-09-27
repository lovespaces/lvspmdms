execute unless score $ManiacNum temporary < $ManiacNum settings run return 0
scoreboard players operation $TempTotal roll.maniac += @s roll.maniac
execute unless score $TempTotal roll.maniac >= $RandomizeRoll temporary run return 0
team join maniac @s
tag @s add Maniac
tag @s add BadGuys
tag @s add CanBuyBow
scoreboard players add $ManiacNum temporary 1