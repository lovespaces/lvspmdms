gamemode spectator @s
function log:escape/success
team join spectator @s
tag @s add Escaped

scoreboard players add $Escaped stats 1
scoreboard players remove $AllPlayers stats 1
function game:end/win/is_gone

execute if score $Phase stats matches 3.. run return 0
function player:dead/innocent_scoreboard
execute unless entity @s[tag=Witness] run return 0
scoreboard players remove $Escaped stats 1
execute if predicate item:already_invis run tag @s add adv.wit.invis
execute unless predicate item:already_invis run tag @s remove adv.actual_invis
execute if score @s adv.drink_invis matches 3.. run tag @s add adv.wit.more_invis
execute if score $Escaped stats >= $EscapeMinimum stats run tag @s remove adv.actual_invis
execute if score $Escaped stats >= $EscapeMinimum stats run tag @s add adv.noph2escape
execute if score $Escaped stats < $EscapeMinimum stats run function escape:check/failed/witness
scoreboard players add $Escaped stats 1