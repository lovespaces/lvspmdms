tag @s add adv.lantern_witness

execute as @s at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.75

tag @r[team=witness] add LanternTemporary
tag @a[tag=LanternTemporary] add adv.wit.escape_with_lantern


tellraw @a[tag=BadGuys] [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"white", "text":"目撃者は、どうやら "}, {"selector":"@a[tag=adv.wit.escape_with_lantern]", "color":"yellow"}, {"text":" のようだ。", "color":"white"}]
tellraw @a[team=spectator] [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"人狼"}, {"text":" は、 ", "color":"white"}, {"selector":"@a[tag=adv.wit.escape_with_lantern]", "color":"yellow"}, {"text": " が目撃者であることを知ったようです", "color":"white"}]

execute as @a[tag=LanternTemporary] at @s run playsound entity.ghast.death master @s ~ ~ ~

tag @a[tag=LanternTemporary] remove LanternTemporary