# 進捗達成チェック
execute as @a[scores={is_playing=1..}, tag=adv.grant] run function game_advancements:grant

team empty spectator
gamemode adventure @a
effect clear @a
clear @a
function game:reset

tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"ゲームが正常に終了しました", "color":"white"}]

execute as @a at @s run function tp:lobby
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"white", "text":"ロビーに移動しました"}]
execute as @a run function item:before/paper
execute as @a[tag=Admin] run function admin:give/

team join nothing @a