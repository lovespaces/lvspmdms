scoreboard players remove @s timer.iron_horse 1

execute unless score @s timer.iron_horse matches ..0 run return 0

tag @s remove IronHorse
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text": "[守護のお守り] ", "color":"yellow"}, {"text":"の効果が無くなった", "color":"white"}]
tellraw @a[team=spectator] [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true},{"color":"yellow","selector":"@s"},{"color":"yellow","text":" [守護のお守り] "},{"color":"white","text":"消滅"}]
execute at @s run playsound entity.blaze.death master @a ~ ~ ~
