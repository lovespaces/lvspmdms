#> game:
#
# game system tick
# 
# @within core:tick

function timer:

execute if score $Phase stats matches 3.. run return 0
function item:
function game:player/
execute as @a run function game:player/loot/