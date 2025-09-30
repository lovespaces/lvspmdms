#> item:emerald/loot
#
# loot emerald
# マルチ対応かは未確認
# アイテム確率の仕組み変更のため、loot tableも分割 + アイテムの種類ごとにわける
#
# @within item:emerald/

function log:emerald_loot with block ~ ~ ~ Items[0].components."minecraft:custom_data"
function item:emerald/give with block ~ ~ ~ Items[0]