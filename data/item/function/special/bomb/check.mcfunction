#> item:special/bomb/check
#
# @within timer:update/item/detonate

execute if entity @s[tag=player.HasIronHorseArmor] as @a[team=murder] run return run function item:special/drop/amulet/iron_horse/

execute if items entity @s weapon.* totem_of_undying if score @s player.stung matches ..0 run return run function item:special/totem/use

function game:player/dead