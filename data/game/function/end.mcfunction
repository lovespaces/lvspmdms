#> game:end
#
# @public

tag @a remove player.Spectator
gamemode adventure @a
clear @a
function core:reset
team join nothing @a

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"ゲームが正常に終了しました", "color":"white"}]

execute as @a at @s run function tp:lobby
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"ロビーに移動しました"}]
execute as @a[tag=player.Admin] run function item:admin/start_paper