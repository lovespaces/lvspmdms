#> game:start
#
# @public

function core:reset

effect give @a resistance infinite 255 true
effect give @a saturation infinite 255 true
effect clear @a[tag=player.Spectator]

gamemode adventure @a
gamemode spectator @a[tag=player.Spectator]

function role:join_team
function log:role/start
function core:set_scoreboard
function item:escape/set
function log:escape_items

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームが始まります。"}]