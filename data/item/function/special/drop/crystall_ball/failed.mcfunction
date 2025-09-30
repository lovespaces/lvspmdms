#> item:special/drop/crystall_ball/failed
#
# crystall ball failed
#
# @within item:special/drop/crystall_ball/roll

playsound entity.enderman.death master @s ~ ~ ~ 0.75

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"yellow", "text":"[ポンコツな水晶玉]"}, {"color":"white", "text":" は、なにかを示そうとしたがその前に壊れてしまった..."}]
tellraw @a[tag=player.Spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"yellow", "text":"[ポンコツな水晶玉] "}, {"color":"white", "text":"は目撃者を示しませんでした。"}]