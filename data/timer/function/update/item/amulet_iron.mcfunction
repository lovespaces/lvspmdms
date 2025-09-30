#> timer:update/item/amulet_iron
#
# @within timer:update/player/check

scoreboard players remove @s timer.iron_horse_armor 1

execute unless score @s timer.iron_horse_armor matches 0 run return 0

scoreboard players reset @s timer.iron_horse_armor

tag @s remove player.HasIronHorseArmor

function log:limit {"item": "守護のお守り"}