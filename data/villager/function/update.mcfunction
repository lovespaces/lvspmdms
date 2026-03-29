function villager:storage/special
# function modify:villager_trade/escape_items

execute as @e[tag=SpecialItems] run function villager:storage/update/special with storage lovespaces:mdms
# execute as @e[tag=villager.EscapeItems] run function modify:villager_trade/update/es_i with storage lovespaces:mdms

data remove storage lovespaces:mdms SpecialItemsTrade
# data remove storage lovespaces:mdms EscapeItemsTrade

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"アイテム取引の一時データを削除しました", "color":"white"}]
