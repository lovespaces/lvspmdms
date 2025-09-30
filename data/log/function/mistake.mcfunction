#> log/mistake
#
# detective mistake log
#
# @within game:adv/bow

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"どうやらさっきのは誤射のようだ..."}]
execute on attacker run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"誤射してしまった！"}]
tellraw @a[tag=player.Spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"selector":"@s", "color":"yellow"}, {"color":"white", "text":" 誤射"}]