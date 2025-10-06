#> game:win/
#
# @within game:player/player_check

scoreboard players set $Phase stats 3

clear @a
function game:win/check

function log:role/end
tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームを終了します。"}]
scoreboard players set $Seconds timer.system 10