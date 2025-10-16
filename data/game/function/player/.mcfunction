#> game:player/
#
# mainly, for detective escape
#
# @within game:

execute as @a[tag=player.HasIronHorseArmor] run effect clear @s invisibility
execute as @a[team=detective, tag=!dead] at @s if entity @e[tag=as.Exit, limit=1, distance=..1] run function game:escape/emergency/
execute as @a[tag=!player.Spectator] at @s unless score @s stats matches 1.. run function game:spectator/