# TODO: 複数人対応
team empty nothing
team join nothing @a[team=!spectator]

execute store result score $AllPlayers stats run execute if entity @a[team=nothing]
scoreboard players operation $Players stats = $AllPlayers stats

scoreboard players operation $AllInnocent stats = $AllPlayers stats
scoreboard players remove $AllInnocent stats 2

team join murder @r[team=nothing]
team join witness @r[team=nothing]
team join detective @r[team=nothing]

team join innocent @a[team=nothing]

tag @a[team=detective] add CanBuyBow
