#> game:player/dead
# 
# player dead
# 
# @within
#   game:adv/bow
#   game:adv/knife

execute as @s at @s run function summon:armor_stand/deadbody
execute at @s run spawnpoint @s ^ ^ ^
kill @s

function log:dead
title @s title {"color":"red", "text":"死んでしまった！"}
title @s times 0s 4s 1
tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"あなたは死んでしまった。"}]

execute on attacker run tag @s add game.Temporary
title @s subtitle [{"selector": "@a[tag=game.Temporary]", "color":"red"}, {"text":" に殺された", "color": "white"}]
tellraw @s [{"color":"red", "text": "[ラブスペ人狼] "}, {"color":"white", "text":"あなたは"}, {"selector": "@a[tag=game.Temporary]", "color":"yellow"}, {"text":" に殺されました。", "color": "white"}]
execute on attacker run tag @s remove game.Temporary

tag @s add player.Spectator
tag @s add player.Dead
gamemode spectator @s
effect clear @s

scoreboard players remove $Players stats 1

execute if predicate role:is_murderer run return run function game:win/innocent

execute if score $Players stats matches 2 run function item:escape/detective/emergency_pick
execute if score $Players stats matches 1 run return run function game:win/check

execute if predicate role:is_witness run function role:dead/witness
execute if predicate role:is_detective run function role:dead/detective