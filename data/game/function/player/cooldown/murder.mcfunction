#> game:player/cooldown/murder
#
# @within game:player/cooldown/check

effect give @s slowness 2 10
item replace entity @s weapon.mainhand with barrier[custom_name=" "] 1
clear @s iron_sword
scoreboard players set @s timer.give_item 4