team empty nothing
team join nothing @a[team=!spectator]
execute store result score $AllPlayers stats if entity @a[team=nothing]

# もしweightのスコアを持っていない場合は設定
execute as @a[team=nothing] run function player:team/weight/default

scoreboard players set $MurderNum temporary 0
scoreboard players set $ManiacNum temporary 0
scoreboard players set $DetectiveNum temporary 0
scoreboard players set $WitnessNum temporary 0

function player:team/murder
function player:team/maniac
function player:team/detective
function player:team/witness
team join innocent @a[team=nothing]
tag @a[team=innocent] add Innocent

function player:team/weight/add

execute store result score $AllInnocent stats if entity @a[team=!murder, team=!detective, team=!maniac, team=!spectator]
scoreboard players operation $FixedAllInnocent stats = $AllInnocent stats
scoreboard players operation $HalfInnocent stats = $AllInnocent stats
scoreboard players operation $EscapeMinimum stats = $AllInnocent stats

scoreboard players operation $RolePlayers stats = $MurderNum settings
scoreboard players operation $RolePlayers stats += $ManiacNum settings
scoreboard players add $RolePlayers stats 1

scoreboard players set $Calc temporary 2
scoreboard players operation $HalfInnocent stats /= $Calc temporary
execute if score $HalfInnocent stats matches 0 run scoreboard players add $HalfInnocent stats 1

scoreboard players set $Calc temporary 4
scoreboard players operation $EscapeMinimum stats *= $Calc temporary
scoreboard players set $Calc temporary 10
scoreboard players operation $EscapeMinimum stats /= $Calc temporary

scoreboard players set $MinimumSudden stats 1
execute if score $AllInnocent stats matches 5.. run scoreboard players add $MinimumSudden stats 1

execute unless entity @a[team=detective] run tag @a[team=!spectator] add CanBuyBow
execute unless entity @a[team=detective] run tag @a[team=!spectator] add CanShootPlayers