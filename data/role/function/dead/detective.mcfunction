#> role:dead/witness
#
# @within game:player/dead

title @a[team=!detective] title {"text":"探偵が死んだ！", "color": "red"}
title @a[team=!detective] times 0s 3s 0s

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color": "white", "text":"探偵が死んだ！"}]
tellraw @a [{"color": "red", "text":"[ラブスペ人狼] "}, {"text":"生き残っている全市民は弓が買えるようになった", "color":"white"}]
tellraw @a [{"color": "red", "text":"[ラブスペ人狼] "}, {"text":"弓は特殊アイテムの村人から買おう。エメラルド三個以上で買えるぞ", "color":"white"}]

tag @a[team=!murder, tag=!player.Spectator] add player.CanBuyBow