# execute store result score $LeaveGame temporary run scoreboard players get * leave_game
execute store result score $DeadInnocent temporary if entity @a[tag=Dead, tag=Innocent]
execute store result score $EscapedInnocent temporary if entity @a[tag=Escaped, tag=Innocent]
execute store result score $DeadWitness temporary if entity @a[tag=Dead, tag=Witness]
execute store result score $EscapedWitness temporary if entity @a[tag=Escaped, tag=Witness]

scoreboard players operation $Online temporary = $DeadInnocent temporary
scoreboard players operation $Online temporary += $EscapedInnocent temporary
scoreboard players operation $Online temporary += $DeadWitness temporary
scoreboard players operation $Online temporary += $EscapedWitness temporary

scoreboard players operation $Calc temporary = $FixedAllInnocent stats
scoreboard players operation $Calc temporary -= $Online temporary

scoreboard players operation $FixedAllInnocent stats -= $Calc temporary
scoreboard players operation $Dead stats += $Calc temporary

execute if score $Dead stats < $HalfInnocent stats unless entity @a[team=murder] run return run function game:end/win/innocent

execute if score $Mistake stats = $FixedAllInnocent stats run return run function game:end/win/special/all_mistake

execute if score $Mistake stats >= $HalfInnocent stats run return run function game:end/win/special/mistake

execute if score $Escaped stats matches 0 run return run function game:end/win/special/all_killed

execute if score $Escaped stats >= $HalfInnocent stats run return run function game:end/win/innocent

execute if score $Dead stats >= $HalfInnocent stats run return run function game:end/win/murder
