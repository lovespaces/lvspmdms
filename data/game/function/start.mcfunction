#> game:start
#
# @public

function core:reset

effect give @a resistance infinite 255 true
effect give @a saturation infinite 255 true
effect clear @a[tag=player.Spectator]

gamemode adventure @a
gamemode spectator @a[tag=player.Spectator]

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームが始まります。"}]

function role:join_team
function log:role/start
function core:set_scoreboard

execute as @a[team=innocent] run function item:escape/set
execute as @a[team=witness] run function item:escape/set

scoreboard players set $Seconds timer.system 10