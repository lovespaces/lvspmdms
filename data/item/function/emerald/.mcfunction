#> item:emerald/
#
# emerald system everything
#
# @within timer:update/

execute store result score @s item.emerald run random value 0..100

execute if score @s item.emerald matches ..35 run function item:emerald/loot/emerald
execute if predicate role:is_murderer if score @s item.emerald matches ..50 run return run function item:emerald/loot/emerald
execute if score @s item.emerald matches 36..70 run function item:emerald/loot/keyitem
execute if score @s item.emerald matches 71..100 run function item:emerald/loot/trash