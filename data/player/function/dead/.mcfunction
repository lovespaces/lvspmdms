execute if entity @s[team=murder] run execute on attacker if entity @s[team=detective] run function game:end/win/special/murder_killed

function summon:armor_stand/dead_body
spawnpoint @s ^ ^ ^
kill @s
clear @s
tag @s add Dead
tag @s remove nearChat
scoreboard players add $Dead stats 1
scoreboard players remove $AllPlayers stats 1
gamemode spectator @s
team join spectator @s
function game_advancements:murder/kill_count
function game:end/win/is_gone
execute if score $Phase stats matches 3.. run return 0
execute if entity @s[tag=Detective] run function player:dead/detective
execute if entity @s[tag=Witness] unless score $Phase stats matches 2.. run function player:dead/witness
function player:dead/innocent_scoreboard
function log:spectator
