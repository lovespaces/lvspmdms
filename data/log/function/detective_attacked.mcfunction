#> log:detective_attacked
#
# detective attacked log
#
# @within game:adv/knife

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"弓を4秒間持てなくなった！"}]
tellraw @a[tag=player.Spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"selector": "@s", "color":"yellow"}, {"color":"white", "text":" 弓 4秒間没収"}]