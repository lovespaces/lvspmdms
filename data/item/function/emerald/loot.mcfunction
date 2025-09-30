#> item:emerald/loot
#
# loot emerald
# マルチ対応かは未確認
#
# @within item:emerald/loot


loot insert ~ ~ ~ loot item:emerald

function log:emerald_loot with block ~ ~ ~ Items[0].components."minecraft:custom_data"
function item:emerald/give with block ~ ~ ~ Items[0]