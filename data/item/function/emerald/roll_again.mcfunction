#> item:emerald/roll_again
#
# @within timer:update/item/key

execute store result score EnderChestOne temporary run data get storage lovespaces:mdms Temporary.EnderChestOne
$execute store result storage lovespaces:mdms Temporary.EnderChestTwo int 1 run random value 1..$(EnderChestCount)
execute store result score EnderChestTwo temporary run data get storage lovespaces:mdms Temporary.EnderChestTwo

$execute if score EnderChestOne temporary = EnderChestTwo temporary run return run function item:emerald/roll_again {"EnderChestCount": $(EnderChestCount)}

function item:emerald/give with storage lovespaces:mdms Temporary