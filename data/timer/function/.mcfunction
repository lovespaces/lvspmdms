execute if score $Phase timer matches 0.. run function timer:phase/
execute if score $SuddenDeath timer matches 0.. run function timer:sudden/
execute as @a[team=murder] if score @s timer.knife matches 0.. run function timer:knife/
execute as @a[tag=QueueKey] if score @s timer.key matches 0.. run function timer:key/
execute as @a[tag=IronHorse] if score @s timer.iron_horse matches 0.. run return 0
execute as @a[tag=UsedTotem] if score @s timer.totem matches 0.. run function timer:totem/
execute as @a if score @s timer.megaphone matches 0.. run function timer:hopper/
