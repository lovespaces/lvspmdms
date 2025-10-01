#> role:detective:attacked
#
# @within game:adv/knife

execute unless items entity @s weapon.mainhand bow run return 0

item replace entity @s weapon.mainhand with barrier[custom_name=" "] 1
clear @s bow
clear @s arrow

scoreboard players set @s timer.give_item 4

function log:detective_attacked