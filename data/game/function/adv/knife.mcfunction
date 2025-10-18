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
execute if entity @s[tag=player.HasIronHorseArmor] run return run function item:special/drop/amulet/iron_horse/

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"刺された！", "color": "white"}]
execute if score $Phase stats matches 1 run function game:player/cooldown/check

execute if items entity @s weapon.mainhand totem_of_undying if score @s player.stung matches ..0 run return run function item:special/totem/use
clear @s totem_of_undying 1

execute if score @s player.stung matches 0 run return run function game:player/dead
scoreboard players remove @s player.stung 1
execute if predicate role:is_detective run function role:detective/attacked

tellraw @s [{"color":"red","text":"[ラブスペ人狼] "},{"color":"white","text":"あと "},{"color":"yellow","score":{"name":"@s","objective":"player.stung"}},{"color":"white","text":" 回耐えられる。"}]
execute if score @s player.stung matches 0 run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"あと一回刺されたら死んでしまう。", "color": "white"}]