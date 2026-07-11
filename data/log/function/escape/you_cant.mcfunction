execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.3
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"脱出するためのアイテムが不足しています。", "color":"white"}]
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"[人狼メモ]", "color":"light_purple"}, {"text":" を確認して脱出アイテムを揃えましょう。", "color":"white"}]