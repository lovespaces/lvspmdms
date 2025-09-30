#> item:trade/duplicate/bow
#
# duplicate system bow
#
# @within item:trade/duplicate/

execute unless items entity @s container.* bow run return 0

execute if entity @s[tag=player.CanBuyBow] run return 0

function item:trade/duplicate/clear {"item": "bow", "count": 5, "name": "探偵の弓"}