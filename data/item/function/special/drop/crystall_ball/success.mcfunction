#> item:special/drop/crystall_ball/success
#
# crystall ball success
#
# @within item:special/drop/crystall_ball/roll

execute as @s at @s run playsound entity.player.levelup master @a ~ ~ ~ 0.75

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"yellow", "text":"[ポンコツな水晶玉]"}, {"color":"white", "text":" を見ていると、段々と人の姿が見えるようになった。"}]
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"目撃者は、どうやら "}, {"selector":"@a[team=witness]", "color":"yellow"}, {"text":" のようだ。"}]

execute as @a[tag=role.Witness] at @s run playsound entity.ghast.death master @s ~ ~ ~