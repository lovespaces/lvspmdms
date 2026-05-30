team empty nothing
team join nothing @a[team=!spectator]

execute store result score $AllPlayers stats if entity @a[team=nothing]
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

scoreboard players set $MurderNum temporary 0
scoreboard players set $ManiacNum temporary 0
execute as @r[team=nothing] run function player:team/murder
execute as @r[team=nothing] run function player:team/maniac

# TODO: 後で消す
tellraw @a[tag=Admin] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"人狼と狂人の設定が終了しました", "color":"white"}]

team join witness @r[team=nothing]
team join detective @r[team=nothing]

team join innocent @a[team=nothing]

tag @a[team=detective] add CanBuyBow
tag @a[team=detective] add CanShootPlayers
tag @a[team=maniac] add CanBuyBow
execute unless entity @a[team=detective] run tag @a[team=!spectator] add CanBuyBow
execute unless entity @a[team=detective] run tag @a[team=!spectator] add CanShootPlayers

tag @a[team=murder] add Murder
tag @a[team=maniac] add Maniac
tag @a[team=murder] add BadGuys
tag @a[team=maniac] add BadGuys
tag @a[team=detective] add Detective
tag @a[team=witness] add Witness
tag @a[team=innocent] add Innocent

tag @a[team=witness] add adv.noph2escape
