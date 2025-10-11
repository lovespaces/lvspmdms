#> game:player/loot/check/
#
# @within game:adv/open_chest

execute store result score EnderChestOne temporary run data get entity @s SelectedItem.components.minecraft:custom_data.CanOpen[0]
execute store result score EnderChestTwo temporary run data get entity @s SelectedItem.components.minecraft:custom_data.CanOpen[1]

execute store result score @s temporary as @e[type=armor_stand, tag=as.EnderChest, distance=..2, limit=1] run function game:player/loot/check/armor_stand