tag @s add adv.lantern_witness

execute as @s at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.75

tellraw @a[team=murder] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"目撃者は、どうやら "}, {"selector":"@a[team=witness]", "color":"yellow"}, {"text":" のようだ。", "color":"white"}]
tellraw @a[team=spectator] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"selector":"@s", "color":"yellow"}, {"text":" は、 ", "color":"white"}, {"selector":"@a[team=witness]", "color":"yellow"}, {"text": " が目撃者であることを知ったようです", "color":"white"}]

execute as @a[team=witness] at @s run playsound entity.ghast.death master @s ~ ~ ~
tag @a[team=witness] add adv.wit.escape_with_lantern
