execute unless entity @s[team=murder] run return 0

scoreboard players add @s adv.mur.kills 1
execute if score @s adv.mur.kills matches 1 run tag @s add adv.first_kill_witness
