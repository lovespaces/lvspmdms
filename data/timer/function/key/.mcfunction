scoreboard players remove @s timer.knife 1

execute unless score @s timer.knife matches ..0 run return 0

function ender_chest:key/
tag @s remove QueueKey
