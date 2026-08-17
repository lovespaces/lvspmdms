tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"white", "text":"どうやら味方の打った矢が当たったようだ。"}]
execute on attacker run tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"white", "text":"味方に矢を当ててしまった。"}]
tellraw @a[team=spectator] [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"selector":"@s", "color":"yellow"}, {"color":"white", "text":" 味方への誤射"}]

playsound entity.ghast.death master @s ~ ~ ~
