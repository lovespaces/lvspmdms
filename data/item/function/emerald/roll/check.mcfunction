#> item:emerald/roll/check
#
# @within item:emerald/roll/roll_again

$execute if data storage lovespaces:mdms {Temporary:{EnderChestList: [$(EnderChestTemp)]}} run return 1
return fail