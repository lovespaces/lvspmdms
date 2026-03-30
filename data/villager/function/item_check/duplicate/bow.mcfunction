execute unless items entity @s container.* bow run return 0

execute if entity @s[tag=CanBuyBow] run return 0

function villager:item_check/clear {"item": "bow", "count": 3, "name": "探偵の弓"}
