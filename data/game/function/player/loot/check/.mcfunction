#> game:player/loot/check/
#
# @within game:adv/open_chest

execute store result score @s temporary if entity @s[tag=player.LostKey] run return 1
execute as @e[type=armor_stand, tag=as.EnderChest, distance=..2, limit=1] run function game:player/loot/check/armor_stand
execute store result score @s temporary as @e[type=armor_stand, tag=as.EnderChest, distance=..2, limit=1] run function game:player/loot/check/chestid with storage lovespaces:mdms Temporary