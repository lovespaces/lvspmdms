gamemode spectator @s
function log:escape/success

scoreboard players add $Escaped stats 1
# function game:player/player_check

execute if score $Phase stats matches 3.. run return 0
execute if entity @s[team=witness] run function player:dead/witness

team join spectator @s
tag @s add Escaped
