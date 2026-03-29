$execute store result storage lovespaces:mdms Temporary.EnderChestTemp int 1 run random value 1..$(EnderChestCount)
execute store success score @s temporary run function ender_chest:key/check with storage lovespaces:mdms Temporary
$execute if score @s temporary matches 1 run return run function ender_chest:key/roll_again {"EnderChestCount": $(EnderChestCount)}
function ender_chest:key/add_data with storage lovespaces:mdms Temporary

execute if score @s temporary.enderchest >= $MaxOpenKey settings run return fail
$function ender_chest:key/roll_again {"EnderChestCount": $(EnderChestCount)}
