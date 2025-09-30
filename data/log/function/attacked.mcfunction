#> log:attacked
#
# attacked log
#
# @within
#   game:adv/bomb
#   game:adv/bow
#   game:adv/knife

$tellraw @a[tag=player.Attacked] [{"color":"red", "text":"[ラブスペ人狼] "}, {"selector":"@s", "color":"yellow"}, {"text":" に $(weapon) を使用した", "color":"white"}]
$tellraw @a[tag=player.Spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"selector": "@a[tag=player.Attacked]", "color":"yellow"}, {"color":"white", "text":" -> "}, {"selector":"@s", "color": "yellow"}, {"color": "white", "text":" ($(weapon))"}]