execute as @a[scores={leave_game=1..}] at @s run function game:leave_game/

function timer:

execute if score $Phase stats matches 1..2 run return 0

execute as @a[tag=IronHorse] run effect clear
execute as @e[type=item] at @s run function item:kill

execute as @a run function ender_chest:clear/
execute as @a run function ender_chest:
execute as @a run function item:
execute as @a run function player:

title @a[team=spectator] actionbar {"text":"※市民とVCをしている場合はミュートにしてください※", "color":"red"}
title @a[team=spectator] times 0 1s 0
