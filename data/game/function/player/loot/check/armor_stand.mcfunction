#> game:player/loot/check/armor_stand
#
# @within game:player/loot/check/

execute unless entity @s[tag=as.EnderChestAdded] run return 0
execute store result storage lovespaces:mdms Temporary.ChestID int 1 run scoreboard players get @s key.number
function game:player/loot/check/chestid with storage lovespaces:mdms Temporary