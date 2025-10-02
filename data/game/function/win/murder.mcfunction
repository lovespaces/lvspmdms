#> game:win/murder
#
# @within game:win/check

title @a title {"text":"殺人鬼の勝ち！", "color":"red"}

scoreboard players set $Phase stats 3

clear @a

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"red", "text":"殺人鬼の勝ち！"}]

function log:role/end

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームを終了します。"}]

scoreboard players set $Seconds timer.system 10