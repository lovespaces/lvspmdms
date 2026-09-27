execute unless score $WitnessNum temporary < $WitnessNum settings run return 0
scoreboard players operation $TempTotal roll.witness += @s roll.witness
execute unless score $TempTotal roll.witness >= $RandomizeRoll temporary run return 0
team join witness @s
tag @s add Witness
scoreboard players add $WitnessNum temporary 1