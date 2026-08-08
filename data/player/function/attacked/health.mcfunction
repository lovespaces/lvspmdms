tag @s remove adv.not_attack
scoreboard players remove @s attack 1

execute if score @s attack matches ..-1 run execute at @s run function log:dead
execute if score @s attack matches ..-1 run return run execute at @s run function player:dead/

execute if score @s attack matches 1 run attribute @s max_health base set 4.0
execute if score @s attack matches 0 run attribute @s max_health base set 2.0