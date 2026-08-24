# execute store result score $LeaveGame temporary run scoreboard players get * leave_game

# execute store result score $DeadInnocent temporary if entity @a[tag=Dead, tag=Innocent]
# execute store result score $EscapedInnocent temporary if entity @a[tag=Escaped, tag=Innocent]
# execute store result score $DeadWitness temporary if entity @a[tag=Dead, tag=Witness]
# execute store result score $EscapedWitness temporary if entity @a[tag=Escaped, tag=Witness]

# 別にstats から持ってこればいいんじゃないのか？
scoreboard players set $Online temporary 0
execute store result score $Online temporary if entity @a[tag=!Escaped, tag=!Dead, team=!spectator, tag=!BadGuys, team=!detective]
scoreboard players operation $Online temporary += $DeadInnocent stats
scoreboard players operation $Online temporary += $Escaped stats

scoreboard players operation $Calc temporary = $FixedAllInnocent stats
scoreboard players operation $Calc temporary -= $Online temporary

execute if score $Calc temporary matches 1.. run function game:end/win/decrease

execute if score $Escaped stats >= $HalfInnocent stats run return run function game:end/win/innocent

execute if score $Escaped stats >= $FixedAllInnocent stats run return run function game:end/win/special/all_escaped

execute if score $Dead stats matches 0 unless entity @a[team=murder] run return run function game:end/win/innocent
execute if score $HalfInnocent stats >= $DeadInnocent stats unless entity @a[team=murder] run return run function game:end/win/innocent

execute if score $Mistake stats >= $FixedAllInnocent stats run return run function game:end/win/special/all_mistake

execute if score $Mistake stats >= $HalfInnocent stats run return run function game:end/win/special/mistake

execute if score $Escaped stats matches 0 run return run function game:end/win/special/all_killed

execute if score $Dead stats > $HalfInnocent stats run return run function game:end/win/murder
