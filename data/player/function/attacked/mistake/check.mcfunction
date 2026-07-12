execute if entity @s[tag=BadGuys] run execute on attacker at @s if entity @s[tag=BadGuys] run return run function player:attacked/mistake/bad_guys
# ↑ここでもう黒側がミスったことが判明している

execute on attacker if entity @s[tag=BadGuys] run return 0

execute if entity @s[tag=BadGuys] run return 0

function log:mistake
execute if entity @s[team=detective] run scoreboard players add $Mistake stats 1
tag @a[team=detective] add adv.defeat_villager
