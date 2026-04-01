tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"どうやらさっきのは誤射のようだ..."}]
execute on attacker run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"誤射してしまった！"}]
tellraw @a[team=spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"selector":"@s", "color":"yellow"}, {"color":"white", "text":" 味方への誤射"}]

playsound entity.ghast.death master @s ~ ~ ~
