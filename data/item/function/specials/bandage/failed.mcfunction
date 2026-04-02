execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"[包帯] ", "color":"yellow"}, {"text":"はもう使えない。", "color":"white"}]
execute if entity @s[tag=Murder] run tag @s add adv.mur.uses_bandage
