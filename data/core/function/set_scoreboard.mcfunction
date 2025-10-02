#> core:set_scoreboard
#
# well its in core folder but only uses in game
#
# @within game:start

scoreboard players set @a[team=!murder, tag=!player.Spectator] item.bandage 2
scoreboard players set @a[tag=!player.Spectator, team=!murder] player.stung 1

scoreboard players set @a[team=detective] item.bandage 2
scoreboard players set @a[team=detective] player.stung 2

scoreboard players set @a[team=witness] item.bandage 0
scoreboard players set @a[team=witness] player.stung 0

scoreboard players set $Phase stats 0
scoreboard players set $Escaped stats 0