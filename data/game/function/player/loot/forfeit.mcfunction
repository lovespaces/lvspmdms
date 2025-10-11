#> game:player/loot/forfeit
#
# cant get the key until they buy it from villager
#
# @within game:player/loot/roll

execute store result score @s temporary run clear @s emerald 0
execute unless score @s temporary matches 1.. run return 0

execute store result score @s temporary run random value 1..100
execute if score @s temporary matches ..30 run return 0

tag @s add player.LostKey