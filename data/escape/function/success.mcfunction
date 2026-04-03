gamemode spectator @s
function log:escape/success

scoreboard players add $Escaped stats 1
scoreboard players remove $AllPlayers stats 1
function game:end/win/check

execute if score $Phase stats matches 3.. run return 0
scoreboard players remove $Escaped stats 1
execute if entity @s[team=witness] if predicate item:already_invis run tag @s add adv.wit.invis
execute if entity @s[team=witness] unless predicate item:already_invis run tag @s remove adv.actual_invis
execute if entity @s[team=witness] if score @s adv.drink_invis matches 3.. run tag @s add adv.wit.more_invis
execute if entity @s[team=witness] if score $Escaped stats >= $EscapeMinimum stats run tag @s remove adv.actual_invis
execute if entity @s[team=witness] if score $Escaped stats < $EscapeMinimum stats run function escape:check/failed/witness
scoreboard players add $Escaped stats 1
team join spectator @s
tag @s add Escaped
