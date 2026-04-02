# 進捗達成チェック
execute as @a[scores={is_playing=1..}] run function game_advancements:

team empty spectator
gamemode adventure @a
effect clear @a
clear @a
function game:reset

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"ゲームが正常に終了しました", "color":"white"}]

execute as @a at @s run function tp:lobby
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"ロビーに移動しました"}]
execute as @a[tag=Admin] run function admin:give/
scoreboard objectives setdisplay sidebar settings
