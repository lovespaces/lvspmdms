#> item:emerald/roll/
#
# @within
#   timer:update/item/key
#   timer:update/phase/1

scoreboard players set @s temporary.enderchest 0
data remove storage lovespaces:mdms Temporary.EnderChestList
execute store result storage lovespaces:mdms Temporary.EnderChestCount int 1 run data get storage lovespaces:mdms EnderChestCount
function item:emerald/roll/first with storage lovespaces:mdms Temporary
function item:emerald/roll/roll_again with storage lovespaces:mdms Temporary

function item:emerald/give with storage lovespaces:mdms Temporary