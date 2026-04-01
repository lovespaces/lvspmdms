execute if entity @s[tag=BadGuys] run execute on attacker at @s if entity @s[tag=!BadGuys] run return run function player:attacked/mistake/bad_guys
execute if entity @s[tag=!BadGuys] run execute on attacker if entity @s[tag=!BadGuys] run return 0

function log:mistake
scoreboard players add $Mistake stats 1
