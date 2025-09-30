#> item:special/drop/detonator
# 
# start bomb
# 
# @within item:special/

scoreboard players reset @s dropped.detonator

kill @e[sort=nearest, type=item, limit=1]

scoreboard players set $Primed timer.bomb 5

execute as @a at @s run playsound entity.tnt.primed master @a ~ ~ ~

function log:used {"item": "起爆装置"}