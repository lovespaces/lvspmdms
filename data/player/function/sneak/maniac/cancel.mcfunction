tag @s remove CanShootPlayers

playsound block.lever.click master @s ~ ~ ~ 0.4
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"矢を当ててもダメージを加えられなくなった。15秒しゃがんでからもしゃがみ続けよう", "color":"white"}]
