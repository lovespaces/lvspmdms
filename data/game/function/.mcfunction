execute as @a[tag=IronHorse] run effect clear
execute as @e[type=item] at @s run function item:kill
execute as @a run function ender_chest:clear/
execute as @a run function item:

title @a[team=spectator] actionbar {"text":"※市民とVCをしている場合はミュートにしてください※", "color":"red"}
title @a[team=spectator] times 0 1 0
