#> item:special/bomb/bomb_item
#
# bomb disappear from innocent inventory
#
# @within item:special/

execute on origin as @s at @s run function item:special/bomb/defuse

kill @s