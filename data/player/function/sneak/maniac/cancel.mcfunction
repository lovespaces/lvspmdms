tag @s remove CanShootPlayers
scoreboard players set @s sneaking 0
playsound block.lever.click master @s ~ ~ ~ 0.4
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"矢を当ててもダメージを加えられなくなった。15秒しゃがんでからもしゃがみ続けよう", "color":"white"}]
title @s actionbar {"text":"キャンセルしました", "color":"red"}
title @s times 0s 2s 1s
xp set @s 0 points
xp set @s 0 levels
