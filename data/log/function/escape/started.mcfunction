execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"脱出の準備中です...", "color":"white"}]
tellraw @s {"text":"準備状況は自身の経験値バーから確認できます。", "color":"gray"}
tellraw @a[team=spectator] [{"text": "[ラブスペ人狼] ", "color":"red"}, {"selector": "@s", "color": "yellow"}, {"text":" が脱出の準備をしています", "color":"white"}]