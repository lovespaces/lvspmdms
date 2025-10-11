#> game:player/loot/check/armor_stand
#
# @within game:player/loot/check/

execute if score EnderChestOne temporary = @s key.number run return 1
execute if score EnderChestTwo temporary = @s key.number run return 1
return fail