execute if entity @s[tag=Detective] run return 0
execute if entity @s[tag=Maniac] run return 0
execute if entity @s[tag=Murder] run return 0

scoreboard players reset $SFXTick timer
scoreboard players remove $AllInnocent stats 1
execute if score $AllInnocent stats = $MinimumSudden stats run function game:setup/sudden_death
