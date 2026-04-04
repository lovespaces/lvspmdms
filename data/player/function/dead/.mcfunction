function summon:armor_stand/dead_body
spawnpoint @s ^ ^ ^
kill @s
clear @s
tag @s add Dead
scoreboard players add $Dead stats 1
scoreboard players remove $AllPlayers stats 1
gamemode spectator @s
team join spectator @s
function game_advancements:murder/kill_count
function game:end/win/check
execute if score $Phase stats matches 3 run return 0
execute if entity @s[team=detective] run function player:dead/detective
execute if entity @s[team=witness] run function player:dead/witness
function log:spectator
