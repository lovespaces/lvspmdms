#> log:limit
#
# limit log

$tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"[$(item)]", "color": "yellow"}, {"text": " の効果が切れた", "color":"white"}]
$tellraw @a[tag=player.Spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"selector":"@s"}, {"text":" の ", "color":"white"}, {"text":"[$(item)]", "color": "yellow"}, {"text": " の効果が切れた", "color":"white"}]