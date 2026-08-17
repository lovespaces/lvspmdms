function villager:storage/special
function villager:storage/escape

execute as @e[tag=SpecialItems] run function villager:storage/update/special with storage lovespaces:mdms
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"特殊アイテムのデータを村人に設定しました", "color":"white"}]

execute as @e[tag=EscapeItems] run function villager:storage/update/escape with storage lovespaces:mdms
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"脱出アイテムのデータを村人に設定しました", "color":"white"}]

data remove storage lovespaces:mdms SpecialItemsTrade
data remove storage lovespaces:mdms EscapeItemsTrade

tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"アイテム取引の一時データを削除しました", "color":"white"}]
