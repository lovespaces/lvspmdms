#> item:trade/duplicate/crystall_ball
#
# duplicate system crystall_ball
#
# @within item:trade/duplicate/

execute unless items entity @s container.* ender_eye run return 0

execute if predicate role:is_murderer run return 0

function item:trade/duplicate/clear {"item": "ender_eye", "count": 5, "name": "ポンコツな水晶玉"}