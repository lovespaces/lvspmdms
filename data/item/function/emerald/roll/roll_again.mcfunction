#> item:emerald/roll/roll_again
#
# @within timer:update/item/key

$execute store result storage lovespaces:mdms Temporary.EnderChestTemp int 1 run random value 1..$(EnderChestCount)
execute store result score @s temporary run function item:emerald/roll/check with storage lovespaces:mdms Temporary
$execute if score @s temporary matches 1 run function item:emerald/roll/roll_again {"EnderChestCount": $(EnderChestCount)}

function item:emerald/add_data with storage lovespaces:mdms Temporary
scoreboard players add @s temporary 1
$execute unless score @s temporary = $MaxOpenKey key.number run function item:emerald/roll/roll_again {"EnderChestCount": $(EnderChestCount)}

function item:emerald/give with storage lovespaces:mdms Temporary