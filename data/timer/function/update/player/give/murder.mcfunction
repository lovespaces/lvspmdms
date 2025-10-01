#> timer:update/player/give/murder
#
# @within timer:update/player/check

scoreboard players remove @s timer.give_item 1

execute unless score @s timer.give_item matches ..0 run return 0

execute if score $Phase stats matches 1 run function item:special/role/normal_knife
execute if score $Phase stats matches 2 run function item:special/role/powered_knife

scoreboard players reset @s timer.give_item