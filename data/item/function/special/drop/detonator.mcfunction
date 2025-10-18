#> item:special/drop/detonator
# 
# start bomb
# 
# @within item:special/

scoreboard players reset @s dropped.detonator
execute if entity @s[tag=player.HasIronHorseArmor] run return 0

kill @e[sort=nearest, type=item, limit=1]

scoreboard players set $Primed timer.system 5

execute as @a at @s run playsound entity.tnt.primed master @a ~ ~ ~

function log:used {"item": "起爆装置"}