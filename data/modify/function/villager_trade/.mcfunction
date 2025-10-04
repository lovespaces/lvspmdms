#> modify/villager_trade/update
#
# @public

function modify:villager_trade/special_items
function modify:villager_trade/escape_items

execute as @e[tag=villager.SpecialItems] run function modify:villager_trade/update/sp_i with storage lovespaces:mdms
execute as @e[tag=villager.EscapeItems] run function modify:villager_trade/update/es_i with storage lovespaces:mdms