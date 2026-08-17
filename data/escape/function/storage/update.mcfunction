data remove storage lovespaces:mdms EscapeItems

data modify storage lovespaces:mdms EscapeItems append value {"translate": "item", "id": "trial_key"}
data modify storage lovespaces:mdms EscapeItems append value {"translate": "item", "id": "blaze_powder"}
data modify storage lovespaces:mdms EscapeItems append value {"translate": "item", "id": "echo_shard"}
data modify storage lovespaces:mdms EscapeItems append value {"translate": "item", "id": "nether_brick"}
data modify storage lovespaces:mdms EscapeItems append value {"translate": "item", "id": "prismarine_shard"}
data modify storage lovespaces:mdms EscapeItems append value {"translate": "item", "id": "heart_of_the_sea"}

tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"EscapeItemsを設定しました", "color":"white"}]
