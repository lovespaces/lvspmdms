execute if entity @s[tag=BadGuys] run execute on attacker at @s if entity @s[tag=BadGuys] run return run function player:attacked/mistake/bad_guys
# ↑ここでもう黒側がミスったことが判明している

execute on attacker if entity @s[tag=BadGuys] run return 0

execute if entity @s[tag=BadGuys] run return 0

function log:mistake
execute on attacker unless entity @s[team=detective] run return 0
scoreboard players add $Mistake stats 1
execute on attacker run tag @s add adv.defeat_villager
