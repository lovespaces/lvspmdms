function timer:
execute unless score $Phase stats matches 1..2 run return 0

execute as @a[scores={leave_game=1..}] at @s run function game:leave_game/
execute as @a unless score @s is_playing matches 1.. run function game:leave_game/not_joining
execute if score $Phase stats matches ..1 unless entity @a[team=witness] run function player:dead/witness

execute as @a[tag=IronHorse] run effect clear
execute as @e[type=item] at @s run function item:kill

execute as @a[team=!spectator] run function ender_chest:clear/
execute as @a[team=!spectator] run function ender_chest:
execute as @a[team=!spectator] run function item:
execute as @a[team=!spectator] run function player:
