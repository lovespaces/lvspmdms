
execute as @s at @s run playsound entity.player.levelup master @a ~ ~ ~ 0.75

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"目撃者は、どうやら "}, {"selector":"@a[team=witness]", "color":"yellow"}, {"text":" のようだ。", "color":"white"}]
tellraw @a[gamemode=spectator] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"selector":"@s", "color":"yellow"}, {"text":" は、 ", "color":"white"}, {"selector":"@a[team=witness]", "color":"yellow"}, {"text": " が目撃者であることを知ったようです", "color":"white"}]

execute as @a[team=witness] at @s run playsound entity.ghast.death master @s ~ ~ ~
