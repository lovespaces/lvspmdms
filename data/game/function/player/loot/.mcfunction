#> game:player/loot/
#
# check ender chest inside
#
# @within game:

execute if items entity @s player.cursor glass_bottle run function game:player/loot/clear
execute if items entity @s container.* glass_bottle run function game:player/loot/clear