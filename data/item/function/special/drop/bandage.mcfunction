#> item:special/drop/bandage
# 
# bandage
# 
# @within item:special/

scoreboard players reset @s dropped.bandage
execute if entity @s[tag=player.HasIronHorseArmor] run return 0
clear @s quartz

playsound entity.player.burp master @s ~ ~ ~

execute if predicate role:is_witness run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"目撃者は ", "color":"white"}, {"text":"[包帯]", "color":"yellow"}, {"text":" を使用することができません。", "color":"white"}]
execute if score @s item.bandage matches ..0 run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"[包帯]", "color":"yellow"}, {"text":" が使える回数を超えています。", "color":"white"}]
execute unless score @s player.stung matches ..0 run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたはまだ ", "color":"white"}, {"text":"[包帯]", "color":"yellow"}, {"text":" を使用できる状態ではありません。", "color":"white"}]

scoreboard players remove @s item.bandage 1
scoreboard players add @s player.stung 1

function log:used {"item": "包帯"}
tellraw @s [{"color":"red","text":"[ラブスペ人狼] "}, {"text":"あと "}, {"score":{"name":"@s","objective":"item.bandage"}}, {"text":" 回使用可能です。", "color":"white"}]
execute if score @s item.bandage matches ..0 run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"[包帯]", "color":"yellow"}, {"text":" が使えるのはこれで最後だ。", "color":"white"}]