#> game:spectator/tp/init
#
# @within game:spectator/tick

execute if entity @s[tag=player.InTpSelector] run return 0

function tp:tp_selector
tag @s add player.InTpSelector

gamemode adventure @s
effect give @s invisibility infinite 2 true
effect give @s saturation infinite 255 true
clear @s *
function item:spectator/get_player_head

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"テレポートしたいプレイヤーの頭を投げてください。", "color": "white"}]
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"テレポートせずに試合に戻る場合は [", "color": "white"}, {"color":"yellow", "text":"試合に戻る"}, {"color":"white", "text":"] を投げてください。"}]