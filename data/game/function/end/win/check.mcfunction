execute unless entity @a[tag=Murder, tag=!Dead] run return run function game:end/win/innocent

execute if entity @a[team=innocent] run return 0
execute if entity @a[team=witness] run return 0

execute store result score $LeaveGame temporary run scoreboard players get * leave_game
scoreboard players operation $AllPlayers stats -= $LeaveGame temporary
scoreboard players operation $Dead stats -= $LeaveGame temporary

execute if score $Mistake stats = $AllInnocent stats run return run function game:end/win/special/all_mistake

execute if score $Mistake stats >= $HalfInnocent stats run return run function game:end/win/special/mistake

execute if score $Escaped stats matches 0 run return run function game:end/win/special/all_killed

execute if score $Escaped stats > $HalfInnocent stats run return run function game:end/win/innocent

execute if score $Dead stats > $HalfInnocent stats run function game:end/win/murder
