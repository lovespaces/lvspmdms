#> game:spectator/
#
# @within game:adv/join_world

gamemode spectator @s
tag @s add player.Spectator

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"試合途中の参加を検知しました。自動的に観戦者として登録します。"}]
tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"試合が終わるまでお静かにお待ち下さい。"}]

team leave @s