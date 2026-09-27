execute unless score $DetectiveNum temporary < $DetectiveNum settings run return 0
scoreboard players operation $TempTotal roll.detective += @s roll.detective
execute unless score $TempTotal roll.detective >= $RandomizeRoll temporary run return 0
team join detective @s
tag @s add Detective
tag @s add CanBuyBow
tag @s add CanShootPlayers
scoreboard players add $DetectiveNum temporary 1