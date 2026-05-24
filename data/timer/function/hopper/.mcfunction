scoreboard players remove @s timer.megaphone 1

execute unless score @s timer.megaphone matches ..0 run return 0

execute if entity @s[tag=UsingHopper] run return run function timer:hopper/times_over
execute if entity @s[tag=CantUseHopper] run return run function timer:hopper/can_use
scoreboard players reset @s timer.megaphone
