#> item:special/potion/normal
#
# normal used
#
# @within item:special/

scoreboard players reset @s used.potion
execute if entity @s[tag=player.HasIronHorseArmor] run return run effect clear @s invisibility

function log:used {"item": "透明化のポーション"}