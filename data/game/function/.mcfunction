function timer:
execute unless score $Phase stats matches 1..2 run return 0

execute as @a unless score @s is_playing matches 1.. run function game:leave_game/not_joining
execute as @a[scores={leave_game=1..}] at @s run function game:leave_game/

execute if score $Phase stats matches ..1 unless entity @a[team=witness] run function player:dead/witness
execute unless score $IsDetectiveDead stats matches 1.. unless entity @a[team=detective] run function player:dead/detective
execute unless entity @a[team=murder] run function game:end/win/is_gone

execute as @a[team=!spectator] run function ender_chest:clear/
execute as @a[team=!spectator] run function ender_chest:
execute as @a[team=!spectator] run function player:
function item:
