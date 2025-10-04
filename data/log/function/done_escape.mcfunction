#> log:done_escape
#
# @within game:escape/nofitication

execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~
tellraw @a [{"color":"red","text":"[ラブスペ人狼] "},{"color":"yellow","selector":"@s"},{"color":"white","text":" が脱出しました！"}]