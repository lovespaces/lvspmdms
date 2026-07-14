tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"どうやら味方の打った矢が当たったようだ。"}]
execute on attacker run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"味方に矢を当ててしまった。"}]
tellraw @a[team=spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"selector":"@s", "color":"yellow"}, {"color":"white", "text":" 味方への誤射"}]

playsound entity.ghast.death master @s ~ ~ ~
