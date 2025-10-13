#> game:spectator/tp/check
#
# @within item:special/drop/player_head

$execute as @a if entity @s[name=$(name)] run tag @s add player.toTp

execute if entity @a[tag=player.toTp] run return fail
execute as @a if entity @s[tag=player.Spectator] run return fail

execute as @a[tag=player.toTp] at @s run function tp:spectator