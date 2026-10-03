scoreboard players set $Phase stats 3
scoreboard players set $Phase timer 200
clear @a
tag @a[scores={is_playing=1..}] add adv.grant
function log:role/end
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"white", "text":"10秒後にゲームを終了します。"}]
