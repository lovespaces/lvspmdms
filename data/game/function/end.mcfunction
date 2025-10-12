#> game:end
#
# @public

gamemode adventure @a
clear @a
function core:reset
team join nothing @a

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"ゲームが正常に終了しました", "color":"white"}]

function tp:lobby
execute as @a[tag=player.Admin] run function item:admin/start_paper