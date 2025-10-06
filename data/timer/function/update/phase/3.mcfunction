#> timer:update/phase/3
#
# @within timer:update/

execute unless score $Seconds timer.system matches 0 run return 0

function game:end