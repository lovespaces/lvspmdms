scoreboard players set $Phase stats 3
scoreboard players set $Phase timer 200
clear @a
function log:role/end
tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームを終了します。"}]
