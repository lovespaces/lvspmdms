#> item:emerald/
#
# emerald system everything
#
# @within timer:update/

execute store result score @s item.emerald run random value 0..100

execute if score @s item.emerald <= $InnocentEmerald game.settings run return run function item:emerald/loot/emerald
execute if predicate role:is_murderer if score @s item.emerald <= $RoleEmerald game.settings run return run function item:emerald/loot/emerald
execute if predicate role:is_detective if score @s item.emerald <= $RoleEmerald game.settings run return run function item:emerald/loot/emerald
execute if score @s item.emerald <= $InnocentKeyItem game.settings run return run function item:emerald/loot/keyitem
execute if score @s item.emerald <= $InnocentTrash game.settings run function item:emerald/loot/trash