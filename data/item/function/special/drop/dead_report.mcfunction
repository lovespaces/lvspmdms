#> item:special/drop/dead_report
# 
# dead report
# 
# @within item:special/

scoreboard players reset @s dropped.dead_report
execute if entity @s[tag=player.HasIronHorseArmor] run return 0

kill @e[type=item, sort=nearest, limit=1]
clear @s name_tag

playsound entity.enderman.teleport master @s ~ ~ ~

function log:used {"item": "インシデント・レポート"}
tellraw @s [{"color":"red","text":"[ラブスペ人狼] "},{"color":"white","text":"死亡者は以下の通りです。"}]
tellraw @s [{"color":"red","text":"[ラブスペ人狼] "},{"color":"gray","selector":"@a[tag=player.Dead]","separator":" , "}]