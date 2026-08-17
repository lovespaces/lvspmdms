execute unless score @s sneaking = $ManiacBowCharging settings run return 0

tag @s add CanShootPlayers
playsound entity.elder_guardian.curse master @s ~ ~ ~ 0.2
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"人を撃つとダメージを与えられるようになった...", "color":"white"}]
title @s actionbar {"text":"※しゃがんだまま弓を打とう※", "color":"red"}
title @s times 0s 5s 1s
xp set @s 100 levels