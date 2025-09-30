#> game:adv/knife
#
# knife advancement function
#
# @within advancement game:knife

advancement revoke @s only game:knife
execute unless score $Phase stats matches 1.. run return 0

execute on attacker if entity @s[tag=player.HasIronHorseArmor] run return 0
execute on attacker run tag @s add player.Attacked
function log:attacked {"weapon": "ナイフ"}
execute on attacker run tag @s remove player.Attacked

execute if entity @s[tag=player.HasIronHorseArmor] on attacker run return 0
tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"刺された！", "color": "white"}]
execute if score $Phase stats matches 1 run return 0
# check cooldown

execute if items entity @s weapon.* totem_of_undying if score @s stung matches ..0 run return run function item:special/totem/use
clear @s totem_of_undying 1

execute if score @s stung matches 0 run return run function mdms:game/player/innocent/dead
scoreboard players remove @s stung 1
execute if predicate role:is_detective run return 0
# detective attacked

tellraw @s [{"color":"red","text":"[ラブスペ人狼] "},{"color":"white","text":"あと "},{"color":"yellow","score":{"name":"@s","objective":"stung"}},{"color":"white","text":" 回耐えられる。"}]
execute if score @s stung matches 0 run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"あと一回刺されたら死んでしまう。", "color": "white"}]