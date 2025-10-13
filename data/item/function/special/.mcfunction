#> item:special/
#
# special item tick
#
# @within item:

execute if score @s dropped.amulet matches 1 run function item:special/drop/amulet/iron_horse/drop
execute if score @s dropped.bandage matches 1 run function item:special/drop/bandage
execute if score @s dropped.crystall_ball matches 1 run function item:special/drop/crystall_ball/roll
execute if score @s dropped.dead_report matches 1 run function item:special/drop/dead_report
execute if score @s dropped.detonator matches 1 run function item:special/drop/detonator
execute if score @s dropped.player_head matches 1 at @s run function item:special/drop/player_head

execute if score @s used.potion matches 1 run function item:special/potion/normal
execute if score @s used.splash matches 1 run function item:special/potion/splash
execute if score @s used.lingering matches 1 run function item:special/potion/lingering

execute if predicate item:isbomb run return run function item:special/bomb/bomb_item

execute as @e[type=item] at @s run function item:special/kill_drop