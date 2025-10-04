#> game:win/innocent
#
# @within game:win/check

title @a title {"text":"市民の勝ち！", "color":"yellow"}

scoreboard players set $Phase stats 3

clear @a

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"yellow", "text":"市民の勝ち！"}]

function log:role/end

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームを終了します。"}]

scoreboard players set $Seconds timer.system 10