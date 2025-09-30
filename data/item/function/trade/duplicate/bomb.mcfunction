#> item:trade/duplicate/bomb
#
# duplicate system bomb
#
# @within item:trade/duplicate/

execute unless items entity @s container.* firework_star run return 0

execute if predicate role:is_murderer run return 0

function item:trade/duplicate/clear {"item": "firework_star", "count": 8, "name": "遠隔小型爆弾"}