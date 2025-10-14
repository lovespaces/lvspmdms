#> game:player/loot/
#
# check ender chest inside
#
# @within game:

execute if items entity @s player.cursor barrier run return run function game:player/loot/clear
execute if items entity @s player.cursor gray_stained_glass_pane run return run function game:player/loot/clear
execute if items entity @s container.* barrier run return run function game:player/loot/clear
execute if items entity @s container.* gray_stained_glass_pane run return run function game:player/loot/clear