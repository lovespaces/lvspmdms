scoreboard players remove @s timer.key 1

execute unless score @s timer.key matches ..0 run return 0

function ender_chest:key/
tag @s remove QueueKey
