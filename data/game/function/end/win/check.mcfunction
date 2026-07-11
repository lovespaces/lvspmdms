# execute store result score $LeaveGame temporary run scoreboard players get * leave_game

# execute store result score $DeadInnocent temporary if entity @a[tag=Dead, tag=Innocent]
# execute store result score $EscapedInnocent temporary if entity @a[tag=Escaped, tag=Innocent]
# execute store result score $DeadWitness temporary if entity @a[tag=Dead, tag=Witness]
# execute store result score $EscapedWitness temporary if entity @a[tag=Escaped, tag=Witness]

# 別にstats から持ってこればいいんじゃないのか？
scoreboard players operation $Online temporary = $Dead stats
scoreboard players operation $Online temporary += $Escaped stats

scoreboard players operation $Calc temporary = $FixedAllInnocent stats
scoreboard players operation $Calc temporary -= $Online temporary

execute if score $Calc temporary matches 1.. run function game:end/win/decrease

execute if score $Escaped stats >= $HalfInnocent stats run return run function game:end/win/innocent

execute if score $Dead stats matches 0 unless entity @a[team=murder] run return run function game:end/win/innocent
execute if score $HalfInnocent stats > $Dead stats unless entity @a[team=murder] run return run function game:end/win/innocent

execute if score $Mistake stats = $FixedAllInnocent stats run return run function game:end/win/special/all_mistake

execute if score $Mistake stats >= $HalfInnocent stats run return run function game:end/win/special/mistake

execute if score $Escaped stats matches 0 run return run function game:end/win/special/all_killed

execute if score $Dead stats >= $HalfInnocent stats run return run function game:end/win/murder
