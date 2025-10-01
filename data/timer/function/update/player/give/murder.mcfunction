#> timer:update/player/give/murder
#
# @within timer:update/player/check

scoreboard players remove @s timer.give_item 1

execute unless score @s timer.give_item matches ..0 run return 0

function role:give/murder

scoreboard players reset @s timer.give_item