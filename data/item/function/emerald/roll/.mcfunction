#> item:emerald/roll/
#
# @within timer:update/item/key

execute store result storage lovespaces:mdms Temporary.EnderChestCount int 1 run data get storage lovespaces:mdms EnderChestCount
function item:emerald/roll/first with storage lovespaces:mdms
function item:emerald/roll/roll_again with storage lovespaces:mdms Temporary