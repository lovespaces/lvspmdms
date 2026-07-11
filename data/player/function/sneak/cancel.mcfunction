tag @s remove Escaping
scoreboard players set @s sneaking 0
playsound block.lever.click master @s ~ ~ ~ 0.4
function log:escape/cancel
xp set @s 0 points
xp set @s 0 levels