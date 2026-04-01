gamemode spectator @s
function log:escape/success

scoreboard players add $Escaped stats 1
scoreboard players remove $AllPlayers stats 1
function game:end/win/check

execute if score $Phase stats matches 3.. run return 0
scoreboard players remove $Escaped stats 1
execute if entity @s[team=witness] if score $Escaped stats < $EscapeMinimum stats run function player:dead/witness
scoreboard players add $Escaped stats 1
team join spectator @s
tag @s add Escaped
