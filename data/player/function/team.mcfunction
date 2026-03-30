# TODO: 複数人対応
team empty nothing
team join nothing @a[team=!spectator]

execute store result score $AllPlayers stats if entity @a[team=nothing]
execute store result score $AllInnocent stats if entity @a[team=!murder, team=!detective, team=!maniac, team=!spectator]

scoreboard players set $Two temporary 2
scoreboard players operation $HalfInnocent stats /= $Two temporary
execute if score $HalfInnocent stats matches 0 run scoreboard players add $HalfInnocent stats 1

scoreboard players set $MurderNum temporary 0
scoreboard players set $ManiacNum temporary 0
execute as @r[team=nothing] run function player:team/murder
execute as @r[team=nothing] run function player:team/maniac
team join witness @r[team=nothing]
team join detective @r[team=nothing]

team join innocent @a[team=nothing]

tag @a[team=detective] add CanBuyBow

tag @a[team=murder] add Murder
tag @a[team=maniac] add Maniac
tag @a[team=detective] add Detective
tag @a[team=witness] add Witness
tag @a[team=innocent] add Innocent
