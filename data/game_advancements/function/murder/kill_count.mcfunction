execute on attacker unless entity @s[team=murder] run return 0

execute on attacker run scoreboard players add @s adv.mur.kills 1
execute if entity @s[team=witness] run execute on attacker if score @s adv.mur.kills matches 1 run tag @s add adv.first_kill_witness
