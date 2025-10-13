#> item:emerald/roll/roll_again
#
# @within
#   item:emerald/roll/
#   item:emerald/roll/roll_again

$execute store result storage lovespaces:mdms Temporary.EnderChestTemp int 1 run random value 1..$(EnderChestCount)
execute store result score @s temporary run function item:emerald/roll/check with storage lovespaces:mdms Temporary
$execute if score @s temporary matches 1 run return run function item:emerald/roll/roll_again {"EnderChestCount": $(EnderChestCount)}
function item:emerald/roll/add_data with storage lovespaces:mdms Temporary

execute if score @s temporary.enderchest = $MaxOpenKey game.settings run return fail

$function item:emerald/roll/roll_again {"EnderChestCount": $(EnderChestCount)}