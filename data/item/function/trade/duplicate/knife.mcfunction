#> item:trade/duplicate/knife
#
# duplicate system knife
#
# @within item:trade/duplicate/

execute unless items entity @s container.* iron_sword run return 0

execute if predicate role:is_murderer run return 0

function item:trade/duplicate/clear {"item": "iron_sword", "count": 5, "name": "殺人鬼のナイフ"}