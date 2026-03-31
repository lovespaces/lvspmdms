execute store result score @s temporary run clear @s emerald 0
execute unless score @s temporary >= $MinimumLostEms settings run return 0

execute store result score @s roll run random value 1..100
execute if score @s roll <= @s roll.lost_key run function ender_chest:roll/lost/key
