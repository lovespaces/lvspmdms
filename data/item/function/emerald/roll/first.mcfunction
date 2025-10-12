#> item:emerald/roll
#
# @within timer:update/item/key

$execute store result storage lovespaces:mdms Temporary.EnderChestTemp int 1 run random value 1..$(EnderChestCount)
function item:emerald/add_data with storage lovespaces:mdms Temporary