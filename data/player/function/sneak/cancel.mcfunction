tag @s remove Escaping
scoreboard players reset @s sneaking
playsound block.lever.click master @s ~ ~ ~ 0.4
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"脱出の準備をキャンセルしました。", "color":"white"}]
title @s actionbar {"text":"キャンセルしました", "color":"red"}
title @s times 0s 2s 1s
