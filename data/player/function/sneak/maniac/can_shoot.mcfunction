execute unless score @s sneaking = $ManiacBowCharging settings run return 0

tag @s add CanShootPlayers
playsound entity.elder_guardian.curse master @s ~ ~ ~ 0.2
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"人を撃つとダメージを与えられるようになった...", "color":"white"}]
