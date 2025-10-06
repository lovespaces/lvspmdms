#> item:escape/detective/emergency_pick
#
# @within

execute unless entity @a[team=detective, tag=!player.Dead] run return 0

execute as @e[tag=as.Emergency, sort=random, limit=1] run tag @s add as.Exit
execute as @e[tag=as.Exit] at @s run setblock ~ ~ ~ iron_trapdoor

tellraw @a [{"text": "[ラブスペ人狼] ", "color":"red"}, {"text":"残りが殺人鬼と探偵のため、非常口が出現した！", "color":"aqua"}]
tellraw @a [{"text": "[ラブスペ人狼] ", "color":"red"}, {"text":"探偵は非常口の上に立つことで脱出できる。", "color":"white"}]