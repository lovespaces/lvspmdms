#> log:used
#
# item used log
#
# @within item:special/

$tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color": "yellow", "text": "[$(item)] "}, {"color": "white", "text": "を使用しました"}]
$tellraw @a[tag=player.Spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"selector": "@s", "color":"yellow"}, {"color":"white", "text":" が "}, {"color": "yellow", "text": "[$(item)] "}, {"color": "white", "text": "を使用しました"}]