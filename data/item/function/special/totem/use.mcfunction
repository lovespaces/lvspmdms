#> item:special/totem/use
# 
# totem use
#
# @within game:adv/knife

effect clear @s
effect give @s instant_damage 5 4 true

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"生き残った！", "color":"white"}]
tellraw @s [{"color": "red", "text":"[ラブスペ人狼] "}, {"text":"お守りを使用して難を逃れた。", "color":"white"}]

execute on attacker run tellraw @s [{"color": "red", "text":"[ラブスペ人狼] "}, {"text":"どうやらお守りを持っていたようだ。", "color":"white"}]

function log:used {"item": "神秘的なお守り"}

scoreboard players set @s timer.totem 2

tag @s add player.HasTotem