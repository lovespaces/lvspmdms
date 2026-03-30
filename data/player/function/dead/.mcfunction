function summon:armor_stand/dead_body
spawnpoint @s ^ ^ ^
kill
clear
tag @s add Dead
scoreboard players add $Dead stats 1
function game:end/win/check
execute if score $Phase stats matches 3 run return 0
gamemode spectator
execute if entity @s[team=witness] run function player:dead/witness
team join spectator @s
