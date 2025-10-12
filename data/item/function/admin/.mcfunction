#> item:admin/
#
# @within core:tick

execute as @e[type=item, limit=1] if data entity @s Item.components.minecraft:custom_data.IsStartPaper run function item:admin/startgame