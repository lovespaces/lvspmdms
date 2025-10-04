#> game:escape/check
#
# this used in sign 
#
# @public

execute if predicate role:is_murderer run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"役職上、あなたは脱出できません。", "color":"white"}]
execute if predicate role:is_detective run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"役職上、あなたは脱出できません。", "color":"white"}]
execute if entity @s[tag=player.HasIronHorseArmor] run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"お守りで守られている状態では脱出できない！", "color":"white"}]

execute if predicate role:is_witness run return run function game:escape/item/
execute if score $Phase stats matches 2 run return run function game:escape/item/
execute if score @s player.stung matches 1.. run return run function game:escape/item/

execute as @s at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"刺されている状態では脱出できない！", "color":"white"}]