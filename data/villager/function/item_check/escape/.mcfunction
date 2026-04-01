advancement revoke @s only villager:escape_trade

execute unless entity @s[team=witness] run return 0

function escape:check/adv/store

execute store result score @s temporary run function escape:check/adv/ with storage lovespaces:mdms

execute unless score @s temporary matches 1 unless score $Escaped stats < $EscapeMinimum stats if entity @s[tag=AlreadyTold] run return 0

tag @s add AlreadyTold
function log:tips/dont_escape_early
