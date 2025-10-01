#> role:give/murder
#
# @within timer:update/player/give/murder

execute if score $Phase stats matches 1 run function item:special/role/normal_knife with entity @s Inventory[{id: "minecraft:barrier"}]
execute if score $Phase stats matches 2 run function item:special/role/powered_knife with entity @s Inventory[{id: "minecraft:barrier"}]