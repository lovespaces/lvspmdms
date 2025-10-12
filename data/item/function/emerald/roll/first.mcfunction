#> item:emerald/roll/first
#
# @within item:emerald/roll/

$execute store result storage lovespaces:mdms Temporary.EnderChestTemp int 1 run random value 1..$(EnderChestCount)
function item:emerald/roll/add_data with storage lovespaces:mdms Temporary