#> game:adv/bow
#
# bow advancement function
#
# @within advancement game:bow

advancement revoke @s only game:bow
execute unless score $Phase stats matches 1.. run return 0

execute on attacker if entity @s[tag=player.HasIronHorseArmor] run return 0

execute on attacker run tag @s add player.Attacked
function log:attacked {"weapon": "弓"}
execute on attacker run tag @s remove player.Attacked

execute if entity @s[tag=player.HasIronHorseArmor] run function item:special/drop/amulet/iron_horse/

function game:player/dead

execute if predicate role:is_murderer run return 0

function log:mistake

scoreboard players add $Mistake stats 1

execute on attacker run function role:detective/mistake