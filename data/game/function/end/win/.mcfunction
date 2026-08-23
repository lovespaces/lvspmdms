scoreboard players set $Phase stats 3
scoreboard players set $Phase timer 200
clear @a
function log:role/end
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"white", "text":"10秒後にゲームを終了します。"}]
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.3