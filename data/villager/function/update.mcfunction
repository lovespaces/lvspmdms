function villager:storage/special
function villager:storage/update/escape

execute as @e[tag=SpecialItems] run function villager:storage/update/special with storage lovespaces:mdms
execute as @e[tag=EscapeItems] run function villager:storage/update/escape with storage lovespaces:mdms

data remove storage lovespaces:mdms SpecialItemsTrade
data remove storage lovespaces:mdms EscapeItemsTrade

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"アイテム取引の一時データを削除しました", "color":"white"}]
