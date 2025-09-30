#> timer:update/item/totem
#
# @within time:update/player/check

scoreboard players remove @s timer.totem 1

execute unless score @s timer.totem matches ..0 run return 0

function item:special/totem/clear

scoreboard players reset @s timer.totem