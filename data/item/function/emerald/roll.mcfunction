#> item:emerald/roll
#
# @within timer:update/item/key

$execute store result storage lovespaces:mdms Temporary.EnderChestOne int 1 run random value 1..$(EnderChestCount)

$function item:emerald/roll_again {"EnderChestCount": $(EnderChestCount)}