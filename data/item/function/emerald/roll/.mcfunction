#> item:emerald/roll
#
# @within

execute store result storage lovespaces:mdms Temporary.EnderChestCount int 1 run data get storage lovespaces:mdms EnderChestCount
function item:emerald/roll/first
function item:emerald/roll/roll_again with storage lovespaces:mdms Temporary