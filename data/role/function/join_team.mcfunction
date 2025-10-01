#> role:join_team
#
# @public

team join nothing @a[tag=!player.Spectator]

execute store result score $AllPlayers stats run execute if entity @a[tag=!player.Spectator]
scoreboard players operation $Players stats = $AllPlayers stats

scoreboard players operation $AllInnocent stats = $AllPlayers stats
scoreboard players remove $AllInnocent stats 1

team join murder @r[team=nothing]
team join witness @r[team=nothing]
team join detective @r[team=nothing]

team join innocent @a[team=nothing]

tag @a[team=detective] add player.CanBuyBow