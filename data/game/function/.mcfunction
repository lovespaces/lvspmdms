#> game:
#
# game system tick
# 
# @within core:tick

function timer:

execute if score $Phase stats matches 3.. run return 0
function item:
function game:player/
execute as @a[tag=!player.Spectator] run function game:afk/