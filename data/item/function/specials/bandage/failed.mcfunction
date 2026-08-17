execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"[包帯] ", "color":"yellow"}, {"text":"はもう使えない。", "color":"white"}]
execute if entity @s[tag=Murder] run tag @s add adv.mur.uses_bandage
